//chapter-8 page 348 example 8.16
//==============================================================================
clc;
clear;

//For a reflex klystron 
n=2;//peak mode value
V0=300;//beam voltage in V
Rsh=20000;//Shunt resistance in ohms
L=0.001;//distance in m
J1=0.582;//bessel coefficient value [JI(X')]
f=8*10^(9);////Operation frequency in Hz
V1=200;//RF gap voltage in V
x=1.759*10^11;//e/m value in C/kg

//CALCULATION
disp('Assume the gap transit time and beam loading are neglected');
w=2*(%pi)*f;//angular frequency in rad
VR=(V0+((sqrt(8*V0/x)*w*L)/((2*(%pi)*n)-((%pi)/2))));//Repeller voltage in V
disp('Assuming output coupling coefficient Bo=1');
I0=(V1/(2*J1*Rsh))/10^(-3);//Beam current necessary to obtain an RF gap voltafe of 200V in mA

//OUTPUT
mprintf('\nThe Repeller voltage is VR=%3.2f V \nBeam current necessary to obtain an RF gap voltafe of 200V is I0=%1.2f mA',VR,I0);

//=========================END OF PROGRAM===============================
