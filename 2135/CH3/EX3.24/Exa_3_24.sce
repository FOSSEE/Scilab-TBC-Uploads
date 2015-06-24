//Exa 3.24
clc;
clear;
close;
format('v',7);

//Given Data :
T1=40+273;//K
T2=5+273;//K
T3=400+273;//K
T4=T1;//K
Q2=1500;//KJ/min
COP_R=T2/(T1-T2);
disp(COP_R,"COP of refrigerator is : ");
Q2dot=Q2/60;//KJ/s
Wdot=Q2dot/COP_R;//KW
disp(Wdot,"Work Input to refrigerator in KW : ");
Eta=(1-T4/T3);//%
Q3dot=Wdot/Eta;//KW
OverallCOP=Q2dot/Q3dot;//
disp(OverallCOP,"Overall COP of refrigerator : ");
//Ans of overall COP is wrong in the book.
