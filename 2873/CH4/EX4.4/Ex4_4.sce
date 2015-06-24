// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 4 Example 4")
T1=(827+273);//temperature of high temperature reservoir  in K
T2=(27+273);//temperature of low temperature reservoir  in K
T3=(-13+273);//temperature of reservoir 3 in K
Q1=2000;//heat ejected by reservoir 1 in KJ
disp("we can writefor heat engine,Q1/Q2=T1/T2")
disp("so Q2=Q1*(T2/T1) in KJ")
Q2=Q1*(T2/T1)
disp("so We=Q1-Q2 in KJ")
We=Q1-Q2
disp("for refrigerator,Q3/Q4=T3/T4 eq 1")
T4=T2;//temperature of low temperature reservoir in K
disp("now We-Wr=300")
disp("so Wr=We-300 in KJ")
Wr=We-300
disp("and Wr=Q4-Q3=1154.55 KJ eq 2 ")
disp("solving eq1 and eq 2 we get")
disp("Q4=(1154.55*T4)/(T4-T3)in KJ")
Q4=(1154.55*T4)/(T4-T3)
disp("and Q3=Q4-Wr in KJ")
Q3=Q4-Wr
disp("total heat transferred to low teperature reservoir(Q) =Q2+Q4 in KJ")
Q=Q2+Q4
disp("hence heat transferred to refrigerant=Q3 in KJ")
Q3
disp("and heat transferred to low temperature reservoir=Q in KJ")
Q
