//chapter-8 page 338 example 8.4
//==============================================================================
clc;
clear;

//For a reflex klystron 
n=2;//peak mode value
V0=500;//beam voltage in V
Rsh=20000;//Shunt resistance in ohms
L=0.001;//distance in m
f=8*10^(9);////Operation frequency in Hz
V1=200;//microwave gap voltage in V
x=1.759*10^11;//e/m value in C/kg
J1=0.582;

//CALCULATION
disp('Assume the gap transit time and beam loading are neglected');
w=2*(%pi)*f;//angular frequency in rad
VR=(V0+((sqrt(8*V0/x)*w*L)/((2*(%pi)*n)-((%pi)/2))));//Repeller voltage in V
disp('Assuming output coupling coefficient Bo=1');
I0=(V1/(2*J1*Rsh))/10^(-3);//Beam current necessary to obtain an microwave gap voltafe of 200V in mA
v0=0.593*10^6*sqrt(V0);//velocity of electron in m/sec
t0=((w*2*L*v0)/(x*(VR+V0)));//transit angle in rad
Bi=1;//beam coupling coefficient [assume]
X=((Bi*V1*t0)/(2*V0));
disp('Since X=1.51, from graph,J1(X)=0.84');
XJ1=0.84;
Eff=((2*(XJ1))/((2*n*(%pi))-((%pi)/2)))*100//Efficiency in %

//OUTPUT
mprintf('\nRepeller voltage is VR=%3.2f V \nThe dc necessary to give an microwave gap voltafe of 200V is I0=%1.2f mA \nElectronic Efficiency is Eff=%2.2f percentage',VR,I0,Eff);

//=========================END OF PROGRAM===============================

//Note: Check the answer for VR once
//Correct answer is Repeller voltage is VR=1189.36 V 
