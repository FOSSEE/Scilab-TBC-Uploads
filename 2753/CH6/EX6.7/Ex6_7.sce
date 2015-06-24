//Example 6.7: 
clc;
clear;
close;
//given data :
Rl=20;//in kilo-ohm
Rs=1;//in kilo-ohm
Rg=1;//in M-ohm
Cs=25;//in micro-F
mu=20;//amplification factor
rd=100;//in kilo-ohm
vi=2;//in V
f=1;//in kilo-Hz
Xc=((1/(2*%pi*f*10^3*Cs*10^-6)));//in ohm
A=((mu*Rl*10^3)/((rd+Rl)*10^3));//Voltage gain
Vo=A*vi;//in V
format('v',5)
disp(Vo,"amplifier output signal voltage is ,(V)=")
