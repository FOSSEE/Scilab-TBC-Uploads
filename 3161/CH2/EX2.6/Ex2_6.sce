clc;
//page 96
//problem 2.6

//Given, the probability that r0 is received given that m0 is sent is 0.9 = P_r0m0 where r is voltage & m is message
P_r0m0 = 0.9

//The probability that m0 is sent is 0.7 = P_m0
P_m0 = 0.7

//The probability that r1 is received given that m1 is sent is 0.6 = P_r1m1
P_r1m1 = 0.6

//The probability that m0 is sent is 0.3 = P_m1
P_m1 = 0.3

//The probability that the transmitted signal is correctly read at receiver is P(c)(P_c) = the probability that m0 was sent when r0 was read(P_r0m0*P_m0) + the probability that m1 was sent when r1 was read(P_r1m1*P_m1)

P_c = P_r0m0*P_m0+P_r1m1*P_m1

//P(e)(P_e) = 1-P(c)
P_e = 1-P_c

disp('P(e) = '+string(P_e))
disp('P(c) = '+string(P_c))
