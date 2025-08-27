# ALU-Project

Hello! This is my 32-Bit parameterized ALU Project in Verilog supporting 15 operations including arithmetic, logical, comparison, and bitwise shift. The design in implemented in behavioral Verilog style and tested using Icarus Verilog and VCD waveform analysis.



**Motivation:**
In my introductory ECE class, I was introduced to the fundamentals of digital logic design and assembly. While components like the ALU were discussed, I realized I lacked a deep understanding of how they actually work. To bridge that gap, I started this project which not only taught me the basics of Verilog but also gave me hands-on experience in building an ALU from the bottom up to its gate-level logic.



**Design Process:**
This project began with writing a basic 4 bit full adder module and building a corresponding 1-bit ALU schematic which helped me understand low-level logic operations. Then I developed a 1-bit ALU using structural Verilog and scaled it to an 8-bit ALU in behavioral style. Eventually, I implemented a parameterized 32-bit ALU which was a major learning milestone. Parameterization made the design more efficient, reusable, and adaptable for future digital logic projects.



**Key Features:**
- 32 bit data width customizable with parameter `WIDTH`
- Supports up to 16 operations including:
  - Arithmetic: ADD, SUB, MUL, DIV
  - Bitwise Logic: AND, OR, NAND, NOR, XOR, XNOR
  - Shifts: Left Shift, Right Shift
- Parameterized module allows scalable bit-widths
- Used Icarus Verilog (iverilog and vvp) for simulation
- Generated VCD waveforms with $dumpfile and $dumpvars for visual debugging
