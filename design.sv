module register_file_16x8 (
    input  logic        clk,
    input  logic        we,                 // Write Enable
    input  logic [3:0]  write_addr,
    input  logic [3:0]  read_addr1,
    input  logic [3:0]  read_addr2,
    input  logic [7:0]  write_data,
    output logic [7:0]  read_data1,
    output logic [7:0]  read_data2
);

    // 16 registers, each 8-bit wide
    logic [7:0] reg_file [15:0];

    // Synchronous Write
    always_ff @(posedge clk) begin
        if (we)
            reg_file[write_addr] <= write_data;
    end

    // Combinational Read
    assign read_data1 = reg_file[read_addr1];
    assign read_data2 = reg_file[read_addr2];

endmodule
