//Chapter-4, Example 4.25, Page 149
//=============================================================================
clc
clear
funcprot(0)
function [polar] = r2p(x,y) //function to convert rectangular to polar
 polar = ones(1,2)
 polar(1) = sqrt ((x ^2) +(y^2))
 polar(2) = atan (y/x)
 polar(2) =(polar (2)*180)/%pi
 endfunction
 function [ rect ] = p2r(r,theta)//function to convert polar to rectangular
 rect = ones(1 ,2)
 theta =( theta *%pi) /180
 rect (1)=r* cos(theta)
 rect (2)=r* sin(theta)
 endfunction
//CALCULATIONS
//v=230*sin(314*t)+60*sin(942*t)
V=230;//voltage in volts
V1=60;//voltage of harmonic in volts
R=10;//resistance in ohms
L=0.3;//inductance in henry
C=100*10^-6;//capacitance in F
//Branch with Resistor (R)
I1m=V/R;//current in A
I1m=I1m/(sqrt(2));//rms current in A
I3m=V1/R;//current in A
I3m=I3m/(sqrt(2));//rms current in A
I=sqrt((I1m)^2+(I3m)^2);//rms current in A
Pr=((I)^2)*(R);//power in Watts
//Branch with inductor(L)
Z1=(10+((%i)*(314*0.03)));//impedance to fundamental component
M=sqrt((10)^2+(9.42)^2);//magnitude of Z1 in polar form
theta=atan(9.42/10)*(180/%pi);//angle of Z1 in polar form
I2m=V/M;//fundamental current in A
I2m=I2m/(sqrt(2));//rms current in A
I4m=V1/M;//third harmonic component of current
I4m=I4m/(sqrt(2));//rms current in A
I1=((I2m)^2+(I4m)^2);//total rms current in A
Pr1=(I1)*(R);//Power in Watts
//branch with capacitor
X1=1/(314*10^-4);//reactance to fundamental component in ohms
I5m=V/(X1);//current in A
I5m=I5m/(sqrt(2));//rms current in A
X2=1/(942*10^-4);//reactance to third harmonic component in ohms
I6m=V1/X2;//current in A
I6m=I6m/(sqrt(2));//rms current in A
I2=sqrt((I5m)^2+(I6m)^2);//total rms current in A
Pr2=0;//power in watts
T=Pr+Pr1+Pr2;//total power dissipated in W
//calculation of total current
Im=(p2r(16.26,0)+p2r(11.84,43.29)+p2r(5.1,90));//pol to rect
disp(Im);//fundamental component of current in A
Im1=(p2r(4.24,0)+p2r(3.09,-43.29)+p2r(4,90));//pol to rect
disp(Im1);//third harmonic component of current in A
T1=sqrt((Im(1))^2+(Im1(1))^2);//total rms current in A
V2=(sqrt((V)^2+(V1)^2))/sqrt(2);//voltage applied in rms
pf=T/((T1)*(V2));//power factor
mprintf("thus total current ,power input and power factor are %2.2f A ,%f W,%1.2f respectively",T1,T,pf);
//=================================END OF PROGRAM======================================================================================================

