//Example 3_29
clc;
clear;
close;
format('v',4);
//given data :
V=230;//V
I=25;//A
f=50;//Hz
R1=5;//ohm
R2=10;//ohm
L2=50;//mH
Z1=R1;//ohm
Z2=R2+%i*2*%pi*f*L2/1000;//ohm
R=poly(0,'R');
Z3=R;//ohm
Z12=Z1*Z2/(Z1+Z2);//ohm
Z=V/I;//ohm//Zdash is Z durectly
R3=Z-Z12;//ohm
R3=real(R3);//ohm
disp(R3,"Value of R(ohm)");
