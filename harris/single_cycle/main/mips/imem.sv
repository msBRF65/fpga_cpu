module imem(
    input logic [5:0] adr,
    output logic [31:0] rd
);
    logic [31:0] RAM[63:0];

    initial begin
        $readmemh("memfile.mem", RAM);
    end
    
    assign rd = RAM[adr];
endmodule