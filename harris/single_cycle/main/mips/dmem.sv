module dmem(
    input logic clk, we,
    input logic [31:0] adr, wd,
    output logic [31:0] rd
);
    logic [31:0] RAM[63:0];

    assign rd = RAM[adr[31:2]];

    always_ff @(posedge clk) begin
        if (we) RAM[adr[31:2]] <= wd;
    end
    
endmodule