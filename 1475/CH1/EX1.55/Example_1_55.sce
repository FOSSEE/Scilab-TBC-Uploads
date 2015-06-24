// 1.55 Two boxes contain respectively 4 white and 2 black
clc;
clear;
B1=(4/6);
B2=(2/6);
C= (3/5);
D= (4/5);
disp((B1*C)/((B1*C)+(B2*D)),"Using Bayes formula, Probability that transfered ball is white P(B1/A)=",D,"Probability that the ball drawn from the 2nd box is black, assuming that the transfered ball was black P(A/B2)=",C,"Probability that the ball drawn from the 2nd box is black, assuming that the transfered ball was white P(A/B1)=",B2,"Probability that the transfered ball was black P(B2)=",B1,"Probability that the transfered ball was white P(B1)=");
