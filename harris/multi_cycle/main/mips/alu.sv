module alu(
    input logic [31:0] srca, srcb,
    input logic [2:0] alucontrol,
    output logic [31:0] aluout, 
    output logic zero
);
    logic [31:0] condinvb, sum;

    assign condinvb = alucontrol[2] ? ~srcb : srcb;
    assign sum = srca + condinvb + alucontrol[2];

    always_comb begin
        case (alucontrol[1:0])
            2'b00: aluout = srca & srcb;
            2'b01: aluout = srca | srcb;
            2'b10: aluout = sum;
            2'b11: aluout = sum[31];
        endcase
    end

    assign zero = (aluout == 32'b0);
endmodule