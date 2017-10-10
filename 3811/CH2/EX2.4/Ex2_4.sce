//Book name: Fundamentals of electrical drives by Mohamad A. El- Sharkawi
//chapter2
//example 2.4
//edition 1
//publisher and place:Nelson Engineering
clc;
clear;
Ls=8;//snubbing inductor in microhenry
VBO=4000;//base voltage in volts
di=200;//rate of change of current (di/dt) in amperes per microsec
dv=1500;//rate of change of voltage (dv/dt) in volt per microsce
Cs=10;//snubbing capacitance in microfarad
Rs=sqrt(VBO/(0.5*di*Cs));//snubbing resistance in ohms
dVscr=((Rs*VBO)/Ls);///rate of change of SCR voltage with respect to time
mprintf("The given snubber circuit is suitable for protecting the SCR from excessive %f volt per microsec",dVscr)

