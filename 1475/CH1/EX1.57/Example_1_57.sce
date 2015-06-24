// 1.57 In a bolt factory the machines
clc;
clear;
B1=(25/100);
B2=(35/100);
B3=(40/100);
C= (5/100);
D= (4/100);
E= (2/100);
disp(B3,"Probability of choosing a bolt from Machine M3=",B2,"Probability of choosing a bolt from Machine M2=",B1,"Probability of choosing a bolt from Machine M1=")
disp((B3*D)/((B1*C)+(B2*D)+(B3*E)),"Using Bayes formula, Probability that a defective bolt was manufactured by machine M3 P(B3/A)=",E,"Probability that a bolt is defective, if it comes from machine M3 P(A/B3)=",D,"Probability that a bolt is defective, if it comes from machine M2 P(A/B2)=",C,"Probability that a bolt is defective, if it comes from machine M1 P(A/B1)=");
// Answer in Book is misprinted.
