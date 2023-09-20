/*
Angelo Nolasco 
NHSE ID:5005497011
Cpe 200L section 1002
Dr.Sarah Harris
*/
module tb_blackjack();
	logic clk,reset;
	logic current_mode,hit,pass;
	logic [3:0] seed1,seed2,seed3,seed4;
	logic [3:0] num1;
	logic [3:0] num2;
	logic [3:0] num3;
	logic [3:0] num4;
	logic [7:0] handpl,handdl;
	logic winnerpl,loserpl,winnerdl,loserdl;
	logic [6:0] seg2pl,seg2dl,seg1pl,seg1dl;

	blackjack dut(clk,reset,current_mode,hit,pass,seed1,seed2,seed3,seed4,num1,num2,num3,num4,handpl,handdl,winnerpl,loserpl,
				  winnerdl,loserdl,seg2pl,seg2dl,seg1pl,seg1dl);
	
	
	always
	  begin
		clk = 1; #5; clk = 0; #5;
		
	  end
	
	initial 
		begin
		  seed1 = 4'd9;
		  seed2 = 4'd3;
		  seed3 =4'd6;
		  seed4 = 4'd8;
		  reset = 1; #10; 
		  reset = 0; current_mode = 1'b0; #10;
		  current_mode = 1'b1; #10;
		// current_mode = 1'b1; #10;
		hit = 1; #10;
		end
	

endmodule

