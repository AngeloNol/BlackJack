//sw[0] is reset
//sw[1] start game
//KEY[0] hit
//KEY[1] pass
//hex[6] and hex[7] is player
//hex[4] and hex[5] is dealer
//hex[0],hex[1],hex[2] and hex[3] is bet



module black_wrapper(input logic [1:0] SW,
						 input logic [1:0] KEY,
						 output logic [7:0] HEX);
						 
	black b(SW[0], SW[1],KEY[0],KEY[1], HEX[0], HEX[1], HEX[2], HEX[3],HEX[4],
					HEX[5],HEX[6], HEX[7]);
	
endmodule
						