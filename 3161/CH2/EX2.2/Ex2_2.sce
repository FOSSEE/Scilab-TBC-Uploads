clc;
//page 86
//problem 2.2

//Probability that A will occur if B has already occurred(P_AB) = ratio of Probability of joint occurence of  A&B (P_A_B) & Probability of B(P_B)
//P_A_B(robability of joint occurence) = Probability that A&B both occur(P_AinterB)

//From given values P_AinterB = 0.1 implies P_A_B = 0.1 & P_B = 0.4
P_AinterB = 0.1
P_A_B = P_AinterB 
P_B = 0.4

P_AB = P_A_B/P_B

//Similarly
//Probability that B will occur if A has already occurred(P_BA) = ratio of Probability of joint occurence of  A&B (P_A_B) & Probability of B(P_A)

//From given values P_A = 0.2
P_A = 0.2

P_BA = P_A_B/P_A

//Bayes theorem says that P_AB = (P_A/P_B)*P_BA
//After Calculating LHS & RHS if both are equal then bayes theorem is satisfying

//Calculating LHS
LHS = P_AB

//Calculating RHS
RHS = (P_A/P_B)*P_BA

disp('P(A/B) = '+string(P_AB) );

if LHS == RHS then
    disp('LHS = RHS, Hence Bayes theorem is verified' );
end


