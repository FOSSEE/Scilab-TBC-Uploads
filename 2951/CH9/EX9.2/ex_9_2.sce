clc;
clear;

white_ball=3;
red_ball=2;
total=white_ball+red_ball;
P_W=white_ball/total;

P_SRFW=1/2; //Prob. of second red given  first white

P_FWSR=P_W *P_SRFW// prob. of first  white and second red

disp(P_FWSR," P(First Ball is White and second is red)=");
