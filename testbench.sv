`timescale 1ns/1ps

module tb;

    logic clk;
    logic we;
    logic [3:0] write_addr, read_addr1, read_addr2;
    logic [7:0] write_data;
    logic [7:0] read_data1, read_data2;

    // Instantiate DUT
    register_file_16x8 dut (
        .clk(clk),
        .we(we),
        .write_addr(write_addr),
        .read_addr1(read_addr1),
        .read_addr2(read_addr2),
        .write_data(write_data),
        .read_data1(read_data1),
        .read_data2(read_data2)
    );

    // Clock Generation
    always #5 clk = ~clk;

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, tb);

        clk = 0;
        we = 0;

        // Write values into all 16 registers
        for (int i = 0; i < 16; i++) begin
            @(posedge clk);
            we = 1;
            write_addr = i;
            write_data = i * 3;   // Example pattern
        end

        @(posedge clk);
        we = 0;

        // Read and display values
        for (int i = 0; i < 16; i++) begin
            read_addr1 = i;
            read_addr2 = 15 - i;
            #1;
            $display("Read R%0d = %0h, R%0d = %0h",
                      read_addr1, read_data1,
                      read_addr2, read_data2);
            #9;
        end

        #20;
        $finish;
    end

endmodule
