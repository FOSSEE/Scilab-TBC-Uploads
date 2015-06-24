clc;
//page 95
//problem 2.5

//Given, The probability that m0 is sent is 0.7 = P_m0
P_m0 = 0.7

//The probability that m0 is sent is 0.3 = P_m1
P_m1 = 0.3

//The probability that r0 is received given that m0 is sent is 0.9 = P_r0m0 where r is voltage & m is message
P_r0m0 = 0.9

//the probability that r1 is received given that m0 is sent is 0.1 = P_r1m0 where r is voltage & m is message
P_r1m0 = 0.1

//The probability that r1 is received given that m1 is sent is 0.6 = P_r1m1
P_r1m1 = 0.6

//the probability that r0 is received given that m1 is sent is 0.4 = P_r0m1 where r is voltage & m is message
P_r0m1 = 0.4

//With the given values check eqations P_r0m0*P_m0(P00) > P_r0m1*P_m1(P01)
P00 = P_r0m0*P_m0
P01 = P_r0m1*P_m1

if P00>P01 then
    disp('as P(r0|m0)*P(m0) > P(r0|m1)*P(m1) is valid, we whould select m0 whenever r0 is received')
end

//With the given values check eqations P_r1m1*P_m1(P11) > P_r1m0*P_m0(P10)
P11 = P_r1m1*P_m1
P10 = P_r1m0*P_m0

if P11>P10 then
    disp('as P(r1|m1)*P(m1) > P(r1|m0)*P(m0) is valid, we whould select m1 whenever r1 is received')
end
