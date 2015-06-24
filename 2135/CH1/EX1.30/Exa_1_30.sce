//Exa 1.30
clc;
clear;
close;
format('v',7);

//Given Data :
W=160;//kJ
W=W*1000;//J
V1=800;//litres
V1=V1/1000;//m^3
//p=7-3*V
//[7*(V2-V1)-1.5*(V2^2-V1^2)]-W/10^5=0;//Nm or J
//7*V2-7*V1-1.5*V2^2+1.5*V1^2-W/10^5;//Nm or J
//P=[-10^5*1.5 10^5*7 -10^5*7*V1+10^5*1.5*V1^2-W]
P=[-1.5 7 -7*V1+1.5*V1^2-W/10^5];
V2=roots(P);//m^3
V2=V2(2);//(V2(1) gives -ve value which is not possible)
disp(V2,"Final Volume in m^3 : ");
P2=7-3*V2;//bar
disp(P2,"Final Pressure in bar : ");
//Answer is wrong in the book as calculation is wrong for V2.
