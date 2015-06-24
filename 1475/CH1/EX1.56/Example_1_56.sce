// 1.56 Three identical boxes I II III
clc;
clear;
B=(1/3);
C= (4/7);
D= (3/10);
E= (2/5);
disp((B*D)/((B*C)+(B*D)+(B*E)),"Using Bayes formula, Probability that box II was selected and ball was white P(B2/A)=",E,"Probability of getting a white ball, assuming that Box III was selected P(A/B3) ",D,"Probability of getting a white ball, assuming that Box II was selected P(A/B2)=",C,"Probability of getting a white ball, assuming that Box I was selected  P(A/B1)=",B,"Probability of choosing a box out 3 is P(B1)=P(B2)= P(B3)=");
