`timescale 1ps/1ps
`include "ALU_32_Bit.v"
 
module ALU_32_Bit_Testbench;
 
    reg [15:0] a, b;
    reg [3:0] op_select;
    wire [31:0] result;
 
 //
    ALU_32_Bit #(.WIDTH(16), .NUM_OPS(8)) 
    
    alu_16_bit_inst ( 
        // in reference to one copy of the design that we are testing
        .a(a),
        .b(b),
        .op_select(op_select),
        .result(result)
    );
 
    initial begin
        // Test Addition
        a = 16'd5; b = 16'h3; op_select = 3'b000;
        #10; $display("ADD: %h + %h = %h", a, b, result); 
 
        // Test Subtraction
        a = 16'd5; b = 16'd3; op_select = 3'b001;
        #10; $display("SUB: %h - %h = %h", a, b, result);
 
        // Test Bitwise AND
        a = 16'hFFFF; b = 16'h0001; op_select = 3'b010;
        #10; $display("AND: %h & %h = %h", a, b, result);
 
        // Test Bitwise OR
        a = 16'hF0F0; b = 16'h0000; op_select = 3'b011;
        #10; $display("OR: %h | %h = %h", a, b, result);

        // Test Bitwise NAND
        a = 16'hFFFF; b = 16'h00FF; op_select = 3'b100;
        #10; $display("NAND: ~(%h & %h) = %h", a, b, result);

        // Test Bitwise NOR
        a = 16'h0000; b = 16'h00FF; op_select = 3'b101;
        #10; $display("NOR: ~(%h | %h) = %h", a, b, result);

        // Test Bitwise XOR
        a = 16'hAAAA; b = 16'h5555; op_select = 3'b110;
        #10; $display("XOR: %h ^ %h = %h", a, b, result);

        // Test Bitwise XNOR
        a = 16'hAAAA; b = 16'h5555; op_select = 3'b111;
        #10; $display("XNOR: ~(%h ^ %h) = %h", a, b, result);
 
        $finish;
    end
 
    initial begin
        $dumpfile("My_ALU_Test.vcd"); 
        $dumpvars(0, ALU_32_Bit_Testbench); // 0 is to include all instances (dumping waves)
    end
 
endmodule