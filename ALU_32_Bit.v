module ALU_32_Bit #(
    parameter WIDTH = 32,
    parameter NUM_OPS = 16
)

(
    input wire [WIDTH-1:0] a,
    input wire [WIDTH-1:0] b,
    input wire [$clog2(NUM_OPS):0] op_select, // rounding 
    output reg [2*WIDTH-1:0] result
);

localparam ADD = 0;
localparam SUB = 1;
localparam AND = 2;
localparam OR = 3; 
localparam NAND = 4;
localparam NOR = 5;
localparam XOR = 6;
localparam XNOR = 7;
localparam MUL = 8;
localparam DIV = 9;
localparam LSHIFT = 10;
localparam RSHIFT = 11;

// what about left right shift, greater equal to comparison, multiplication division

    always @(*) begin
        case (op_select)
            ADD: result = a + b; // Addition
            SUB: result = a - b; // Subtraction
            AND: result = a & b; // Bitwise AND
            OR: result = a | b; // Bitwise OR
            NAND: result = ~(a & b); // Bitwise NAND
            NOR: result = ~(a | b); // Bitwise NOR
            XOR: result = a ^ b; // Bitwise XOR
            XNOR: result= ~(a ^ b); // Bitwise XNOR
            MUL: result = a * b; // Bitwise MUL 
            DIV: result = a / b; // Bitwise DIV
            LSHIFT: result = a << b; // Logical left shift
            RSHIFT: result = a >> b; // Logical right shift
            default: result = 0;      // Default case
        endcase
    end

    
endmodule