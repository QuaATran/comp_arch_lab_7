module comp_arch_lab_7 (rd, rs1, rs2, imm, clock, rst);

 input  rst, clock;
 output [4:0] rd, rs1, rs2;
 output [11:0] imm;
 
 wire [7:0]  PCout;
 wire [31:0] ROMout;

 PC pc (.clock(clock), .rst(rst), .Din(PCout), .Dout(PCout));
 ROM rom (.adr(PCout), .clock(clock), .Dout(ROMout));
 ID id (.Din(ROMout), .rd(rd), .rs1(rs1), .rs2(rs2), .imm(imm));


endmodule 