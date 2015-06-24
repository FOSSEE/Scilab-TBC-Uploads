//Example No. 7.10.4
clc;
clear;
close;
format('v',7);
N1=1;//no. of turns in primary
N2=8;//no. of turns in secondary
//a=lambda/25;
aBYlambda=1/25;//(temporary calculation)
//A=%pi*a^2
A_BY_lambda_sqr=%pi*aBYlambda^2;//(temporary calculation)
Rr1=31200*(N1*A_BY_lambda_sqr)^2;//Ω(Radiation resistance for single turn)
disp(Rr1,"Radiation resistance for single turn loop in Ω : ");
Rr2=31200*(N2*A_BY_lambda_sqr)^2;//Ω(Radiation resistance for 8 turn)
disp(Rr2,"Radiation resistance for 8 turn loop in Ω : ");
