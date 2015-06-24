clc;
//page 85
//problem 2.1

//A & B are two events occured in sample space S, where P(A) & P(B) are their corresponding probability
P_S=1

//Given A&B are not mutually exclusive events, 
//Probability of A is 0.2 = P_A
//Probability of B is 0.4 = P_B
//Probability of either A or B is 0.5 = P_AUB
P_A = 0.2
P_B =  0.4
P_AUB = 0.5

//Probability of both of A&B jointly occur is P_AinterB = P_A+P_B-P_AUB where inter is intersection
P_AinterB = P_A+P_B-P_AUB

disp('Probability of both of A&B jointly occur is '+string(P_AinterB))

//Probability of none of AorB are occur is P_NOAB = Total occurence(P_S) - Probability of either AorB(P_AUB)
P_NOAB = P_S-P_AUB

disp('Probability of none of AorB are occur is '+string(P_NOAB))
