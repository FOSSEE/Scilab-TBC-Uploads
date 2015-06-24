//Exa 4.3
clc;
clear;
close;
//Investment proposal A : 
P1=-10000;//in Rs
P2=3000;//in Rs
P3=3000;//in Rs
P4=7000;//in Rs
P5=6000;//in Rs
i=18;//in % per annum
//Formula : (P/F,i,n) : 1/((1+i/100)^n)
PW_A=P1+P2*1/((1+i/100)^1)+P3*1/((1+i/100)^2)+P4*1/((1+i/100)^3)+P5*1/((1+i/100)^4);//in RS
disp(PW_A,"The present worth of A in RS. : ");

//Investment proposal B : 
P1=-10000;//in Rs
P2=6000;//in Rs
P3=6000;//in Rs
P4=3000;//in Rs
P5=3000;//in Rs
i=18;//in % per annum
//Formula : (P/F,i,n) : 1/((1+i/100)^n)
PW_B=P1+P2*1/((1+i/100)^1)+P3*1/((1+i/100)^2)+P4*1/((1+i/100)^3)+P5*1/((1+i/100)^4);//in RS
disp(PW_B,"The present worth of B in RS. : ");
disp("At i=18%, the present worth of proposal B is higher than that of proposal A. Therefore, select proposal B.")