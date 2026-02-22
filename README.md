# 16x8 Register File - SystemVerilog

## 📌 Project Overview
This project implements a 16x8 Register File using SystemVerilog.  
The design supports dual read ports and a single synchronous write port.  
Simulation and verification were performed using EDA Playground with Icarus Verilog.

---

## 🏗 Design Specifications

- Number of Registers: 16
- Data Width: 8 bits
- Address Width: 4 bits (2^4 = 16)
- Dual Read Ports
- Single Write Port
- Synchronous Write (posedge clock)
- Combinational Read

---

## ⚙️ Architecture Description

The register file is implemented using a 2D array:

logic [7:0] reg_file [15:0];

- Write operation occurs on the positive edge of the clock when write enable (we) is high.
- Read operations are purely combinational.
- Address decoding is handled using 4-bit addressing.

---

## 🧪 Verification

A SystemVerilog testbench was developed to:

- Write data into all 16 registers
- Read two registers simultaneously
- Display values for functional verification
- Generate waveform (wave.vcd) for timing analysis

### Sample Output

Read R0 = 0, R15 = 2d  
Read R1 = 3, R14 = 2a  
Read R2 = 6, R13 = 27  
...  
Read R15 = 2d, R0 = 0  

---

## 🛠 Tools Used

- EDA Playground
- Icarus Verilog
- GTKWave

---

## 📂 Project Structure

16x8-register-file-systemverilog/
│
├── src/
│   └── design.sv
│
├── tb/
│   └── testbench.sv
│
├── sim/
│   └── wave.vcd
│
├── docs/
│   └── waveform.png
│
└── README.md

---

## 💡 Concepts Demonstrated

- Register File Architecture
- Address Decoding
- Synchronous Sequential Logic
- Combinational Logic
- RTL Design using SystemVerilog
- Testbench Development
- Waveform Debugging

---

## 👨‍💻 Author

Manjunath Bhaskar Hebbar  
B.Tech VLSI  
Presidency University Bangalore
