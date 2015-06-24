//Exa 6.6
clc;
clear;
close;
//given data
RL=20;//in Kohm
RS=1;//in Kohm
RG=1;//in Mohm
Cs=25;//in uF
mu=20;//unitless
rd=100;//in Kohm
Vs=2;//in Volt
f=1;//in KHz
Xc=1/(2*%pi*f*Cs);//in Ohm
disp(Xc,"Xc in Ohm : ");
disp("As Xc<<Rs, therefore Cs bypasses all ac components. ");
Av=mu*RL/(rd+RL);//unitless
Vo=Av*Vs;//in Volt
disp(Vo,"Output voltage in volt : ");
