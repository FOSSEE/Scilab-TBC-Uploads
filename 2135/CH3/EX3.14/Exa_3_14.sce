//Exa 3.14
clc;
clear;
close;
format('v',7);

//Given Data :
T1=1000;//K
T3=100;//K
Q1=1680;//KJ
//Eta_a=Eta_b : 1-T2/T1=1-T3/T2
T2=sqrt(T1*T3);//K
Eta_a=1-T2/T1;
Eta_b=Eta_a;
W1=Eta_a*Q1;//KJ
Q2=Q1-W1;//KJ
Q3=(1-Eta_b)*Q2;//KJ
disp(Q3,"Heat rejected by engine B in KJ : ");
disp(T2,"Temperature at which heat is rejected by engine A in K :  ");
disp(W1,"Workdone by engine A in KJ ; ");
W2=Eta_b*Q2;//KJ
disp(W2,"Workdone by engine B in KJ ; ");
//If W1=W2
//Q/T=constant
T2=(T1+T3)/2;//K
Eta_a=(1-T2/T1)*100;//%
Eta_b=(1-T3/T2)*100;//%
disp("If Engine A & B deliver equal work.")
disp(Eta_a,"Efficiency of Engine A in % : ");
disp(Eta_b,"Efficiency of Engine B in % : ");
