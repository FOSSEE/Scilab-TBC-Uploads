//Exa 3.16
clc;
clear;
close;
format('v',6);

//Given Data :
T1=840+273;//K
T2=60+273;//K
T3=5+273;//K
W3=30;//KW
Q3=17;//KJ/s
//Q3/T3=Q4/T4
T4=T2;//K
Q4=Q3/T3*T4;//KJ/s
W2=Q4-Q3;//KJ/s
W1=W2+W3;//KJ/s
Q1subQ2=W1;//KJ/s
//Q1/T1=Q2/T2
Q1ByQ2=T1/T2;
//Q1subQ2=Q1subQ2*Q2-Q2
Q2=Q1subQ2/(Q1ByQ2-1);//KW
Q1=Q1ByQ2*Q2;//KW
disp(Q1,"Rate of heat supply from 800 degree C source in KW : ");
disp(Q2+Q4,"Rate of heat rejection to sink in KW : ");
