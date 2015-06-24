//Exa 3.26
clc;
clear;
close;
format('v',7);

//Given Data :
T1=870;//K
T2=580;//K
T3=290;//K
Wdot=85;//KW
Q3=3000;//KJmin
Q3=Q3/60;//KJ/s
Q1plusQ2=Wdot+Q3;//KJ
//sigma(Q/T)=0
//Q1/T1+Q2/T2=Q3/T3
//Q1/T1+(Q1plusQ2-Q1)/T2-Q3/T3=0
Q1=(-Q3*T1*T2/T3+Q1plusQ2*T1)/(T1-T2);//KW
disp(Q1,"Heat Supplied by source1 in KW : ");
Q2=Q1plusQ2-Q1;//KW
disp(Q2,"Heat Supplied by source2 in KW : ");
Eta=Wdot/(Q1+Q2)*100;//%
disp(Eta,"Efficiency of engine in % :");
