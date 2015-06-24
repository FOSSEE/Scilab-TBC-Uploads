//To determine the effect of tapping to raise the secondary voltage by 10%
clear 
clc;

Y=-%i*10;
n=1+.1;
Y1=n*(n-1)*Y;
Y2=(1-n)*Y;
disp(Y1,"Y1=");
disp(Y2,"Y2=");
disp("The shunt elements equal to a reactor of 1.1V1^2 size oin the primary side and a capacitive of sixe 1V2^2 on the secondary side");
