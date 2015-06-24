clc;
clear;
disp("For the 4 state machine M4 in PG 397");
disp("IF the four states A,B,C,D are assigned as 00,01,10,11(ta={(AC)(BD)})  and 00,01,11,10(tb={(AD)(BC)})");
disp("And if the output,next state functions of both the assignments are calculated we can find that ");
disp("For first assignment ");
disp("Y1=x^y1+xy1^");
disp("Y2=x^y2^+y1^y2^+xy1y2");
disp("z=x^y1^y2^+x^y1y2+xy1^y2+xy1y2^");
disp("Second Assignment ");
disp("Y1=x^y1+x^y1");
disp("Y2=x^y2^+xy1^y2+y1y2^");
disp("z=x^y2^+xy2");
disp("Since the second assignment results in reduced output expression this partition is called as output-consistent partition")