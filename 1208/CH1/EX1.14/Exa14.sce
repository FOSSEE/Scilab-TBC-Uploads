//Exa14
clc;
clear;
close;
//given data :
R1=5000;//in Rs
R2=10000;//in Rs
R3=10000;//in Rs
R4=3000;//in Rs
R5=2000;//in Rs
r=10;//in % per annum
i=r/100;
n=5;//in years
//formula for present vlue of series payments PV=R1/(1+i)^(1)+R2/(1+i)^(2)+.............+Rn/(1+i)^n;
PV=R1/(1+i)^(1)+R2/(1+i)^(2)+R3/(1+i)^(3)+R4/(1+i)^4+R5/(1+i)^5;
disp(PV,"Present value is: ")