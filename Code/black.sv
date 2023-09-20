/*
Angelo Nolasco 
NHSE ID:5005497011
Cpe 200L section 1002
Dr.Sarah Harris

Description: The program will create the game blackjack, which will allow the
user to hit or pass, once give the first two cards. For the dealer it will
not need user becuase if the dealer total is less than 17 it will keep on hitting. 
Until the dealer goes over 17, then is check who has won. The first to 21 wins.

*/
module black(input logic clk,reset,
				 input logic current_mode,hit,pass,
				 input logic [3:0] seed1,seed2,seed3,seed4,
				 output logic [3:0] num1,
				 output logic [3:0] num2,
				 output logic [3:0] num3,
				 output logic [3:0] num4,
				 output logic [7:0] handpl,handdl,
				 output logic winnerpl,loserpl,winnerdl,loserdl,
				 output logic [6:0] seg2pl,seg2dl,seg2bt,seg1pl,seg1dl,seg1bt);

	logic [3:0] datapl,datadl;
	logic enable1,enable2,enable3,enable4;
	logic [7:0] tempcardpl,tempcarddl;
	logic [7:0] totalpl,totaldl;

	//RNG module  instantiation
	RNG genplcd1(clk,reset,enable1,seed1,num1);
	RNG genplcd2(clk,reset,enable2,seed2,num2);
	RNG gendlcd1(clk,reset,enable3,seed3,num3);
	RNG gendlcd2(clk,reset,enable4,seed4,num4);
	
	//sevenseg module instantiation
	sevenseg displaypl(datapl,seg2pl,seg1pl);
	sevenseg displaydl(datadl,seg2dl,seg1dl);
	sevenseg displaybt(databt,seg2bt,seg1bt);
	
	//check_winner module instantiation
	check_winner pl(clk,totalpl,winnerpl,loserpl);
	check_winner dl(clk,totaldl,winnerdl,loserdl);

		//Below is my fsm or mode state
		// s0 reset
		// s1 start
		//s2 hit or pass
		// s3 hit
		//s4 pass
		// s5 win or lose 
    typedef enum logic [5:0] {S0,S1,S2,S3,S4,S5} statetype;
	statetype state,nextstate;
	
	
	always_ff @(posedge clk, posedge reset)
	if (reset) begin//when at reset it set the num 1-4 to zero,and also goes to state zero
	state = S0; 
	//num1 = 0;
	//num2 = 0;
	//num3 = 0;
	//num4 = 0;
	end
	else begin state = nextstate;
	
	if(state == S1) begin//when in state one the enables are set to one
	enable1 = 1;
	enable2 = 1;
	enable3 = 1;
	enable4 = 1;
	end
	else if(state == S3)//when in state three the enable is set to one
	enable1 = 1;
	else  begin//when outside of state 1 or 3 enable go to zero
	enable1 = 0;
	enable2 = 0;
	enable3 = 0;
	enable4 = 0;
	end
 end
	always_ff @(posedge clk) begin
	case(state)
	S0: if(reset) begin//reset will diplay noting
		datapl = 0;
		datadl = 0;
		nextstate = S0;
		end
		else nextstate = S1;
	S1: if(current_mode) begin//s1 will display the total of the two cards from player and dealer
		tempcardpl = num1 + num2;
		handpl = tempcardpl;
		tempcarddl = num3 + num4;
		handdl = tempcarddl;
		datapl = handpl ;
		datadl = handdl;
		databt = 50;
		nextstate = S2;
		end
		else nextstate = S0;
	
	S2: if(current_mode) begin//s2 check if hit is 1 goes to s3
		 if(hit == 1) begin
		 nextstate = S3;//after come back of s3 new card is random generator
		 handpl = num1;
		 handpl = handpl +tempcardpl;
		 datapl = handpl;
		 //tempcardpl = tempcardpl + datapl;
		 end
		 else 
		 if(pass == 1)//if pass one then goes to s4
		 nextstate = S4;
		end
	
	S3: if(current_mode) begin
		nextstate = S2;
		end
	
	S4: if(current_mode) begin//store the previous amount
		tempcardpl = tempcardpl;
		handpl = tempcardpl;
		datapl = handpl;
		nextstate = S5;
		end
		
	S5: if(current_mode) begin//s5 checks for a winner
		totalpl = handpl;
		if(totalpl == 7'd21)begin
		 winnerpl = 1;
		 databt = 50 * 2;
		 end
		 if(totalpl > 7'd21)begin
		 loserpl = 1;
		 databt = 50 /2;
		 end
		nextstate = S1;
		end
	default: nextstate = S0;
  endcase
end


			
endmodule

//Rng module creates a counter that allows to generator a 
//number betwwen 1-11
module RNG(input logic clk,reset,
			input logic enable,
			input logic [3:0]seed,
			output logic [3:0]num);
				  
	logic [3:0] counter;
	
	always_ff @(posedge clk)begin
	if(reset) begin//if in reset set the counter to the seed
	counter = seed;
	num = 0;//set num to zero
	end
	else begin
		if(counter <= 11 )//counter is less than 11
		counter = counter + 1; //one is add to the counter
		else 
		counter = 0;//over 11 counter set to zero
		if(enable)//if enable at 1
		num = counter;//num is assign the counter
	end
 end
	
endmodule

//check if  player or dealer has won
module check_winner(input logic clk,
					input logic [7:0]total,
					output logic winner,
					output logic loser);
					
	always @(posedge clk) begin
	if(total == 7'd21)begin//if player or dealer gets a 21 they win
	winner = 1;
	loser = 0;
	end
	else if(total > 7'd21)begin//if player or dealer goes over a 21 they lose
	winner = 0;
	loser = 1;
	end
  end
 
 endmodule
 
 //display the player and dealer total amount they have	
 module sevenseg(input logic [3:0] data,
				output logic [6:0] seg2,seg1);
				
	
	
	always_comb begin
	
	case(data)
	0:seg2 = 7'b000_0000;
	1:seg2 = 7'b000_0001;
	2:seg2 = 7'b000_0010;
	3:seg2 = 7'b000_0011;
	4:seg2 = 7'b000_0100;
	5:seg2 = 7'b000_0101;
	6:seg2 = 7'b000_0110;
	7:seg2 = 7'b000_0111;
	8:seg2 = 7'b000_1000;
	9:seg2 = 7'b000_1001;
	default: seg2 = 7'b000_0000;
	endcase


	case(data)
	0:seg1 = 7'b000_0000;
	1:seg1 = 7'b000_0001;
	2:seg1 = 7'b000_0010;
	3:seg1 = 7'b000_0011;
	4:seg1 = 7'b000_0100;
	5:seg1 = 7'b000_0101;
	6:seg1 = 7'b000_0110;
	7:seg1 = 7'b000_0111;
	8:seg1 = 7'b000_1000;
	9:seg1 = 7'b000_1001;
	default: seg1 = 7'b000_0000;
	endcase
	
 end
	
endmodule
	

					
					
					
	
