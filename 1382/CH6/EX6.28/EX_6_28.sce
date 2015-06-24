// Example 6.28;//gain with feedback ,input impedance  and output impedance 
clc;
clear;
close;
Zi=1;//input impedance in killo ohms
Zo=40;//input impedance in killo ohms
A=10000;//gain wtihout feedback
Beta=0.05;//gain
Afb=round(A/(1+Beta*A));//overall gain
Zif= round((1+A*Beta)*Zi);//input impedance with feedback in mega ohms
Zof= round(Zo*10^3/(1+Beta*A));//OUTPUT impedance with feedback in  ohms
disp(Afb,"overall voltage gain")
disp(Zif,"input impedance with feedback in mega ohms")
disp(Zof,"OUTPUT impedance with feedback in  ohms")

