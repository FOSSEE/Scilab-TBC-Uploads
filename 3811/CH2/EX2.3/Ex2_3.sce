// Book Name: Fundametals of electrical drives by Mohamad A. El- Sharkawi
//chapter 2
//example 2.3
//edition 1
//publisher and place:Nelson Engineering
clc;
clear;
VBO=300; //base voltage in volts
de=100; //maximum di/dt of SCR in A/microsec
Vs=120; //source voltage rms value in volts
L=(VBO/(0.5*de));
disp(L,'The minimum value of snubbing inductance in microhenry is')
