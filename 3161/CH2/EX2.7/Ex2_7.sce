clc;
//page 96
//problem 2.7

//Here P(ra|mb) is denoted as P_ramb where a is 0,1,2 & b is 0,1
//P(X) is denoted as P_X where X is m0, m1, C & E

//From given values P_m0 = 0.6, P_m1 = 0.4, P_r0m0 =0.6, P_r1m1 = 0.7, P_r0m1 = 0, P_r1m0 = 0.2, P_r2m0 = 0.2 & P_r2m1 = 0.3
P_m0 = 0.6
P_m1 = 0.4
P_r0m0 =0.6
P_r1m1 = 0.7
P_r0m1 = 0
P_r1m0 = 0.2
P_r2m0 = 0.2
P_r2m1 = 0.3

//(a)
//Comaparing P(r0|m0)*P(m0) & P(r0|m1)*P(m1) gives result
LHS = P_r0m0*P_m0
RHS = P_r0m1*P_m1

disp('As P(r0|m0)*P(m0)['+string(LHS)+'] > P(r0|m1)*P(m1)['+string(RHS)+']')
disp('we select m0 whenever r0 is received')

//Similarly compare P(r1|m1)*P(m1) & P(r1|m0)*P(m0)
LHS = P_r1m1*P_m1
RHS = P_r1m0*P_m0

disp('As P(r1|m1)*P(m1)['+string(LHS)+'] > P(r1|m0)*P(m0)['+string(RHS)+']')
disp('we select m1 whenever r1 is received')

//compare P(r2|m0)*P(m0) & P(r2|m1)*P(m1)
LHS = P_r2m0*P_m0
RHS = P_r2m1*P_m1

disp('As P(r2|m0)*P(m0)['+string(LHS)+'] = P(r2|m1)*P(m1)['+string(RHS)+']')
disp('We can accordingly make either assignment and we arbitrarily associate r2 with m0')

//(b)
//The probability of being correct is P(C) = P(r0|m0)*P(m0)+P(r1|m1)*P(m1)+P(r2|m0)*P(m0)
P_C = P_r0m0*P_m0+P_r1m1*P_m1+P_r2m0*P_m0

//The probability of error is P(E) = 1-P(C)
P_E = 1 - P_C;

disp('Probability of being correct is P(C) = '+string(P_C)')
disp('Probability of error is P(E) = '+string(P_E)')
