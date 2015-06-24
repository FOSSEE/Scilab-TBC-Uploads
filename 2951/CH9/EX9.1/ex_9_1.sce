clear;
clc;
// f2 be the event that " a two occurs"


tot=6; //total number of possible outcomes
f_2=1; // number of desired outcomes
M=3; // number of even outcomes

///// a)

P_A=f_2/tot; //P(A)

///// b)
P_M=M/tot; //P(M)

////// c)
P_AintersectionM=P_A/P_M; //P(A intersection M)

disp(P_A,"a) P(A)= ");
disp(P_M,"b) P(M)=");
disp(P_AintersectionM=P_A/P_M,"c) P(A intersection M)=");

