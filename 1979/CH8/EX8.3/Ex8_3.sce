//chapter-8 page 338 example 8.3
//==============================================================================
clc;
clear;

//For a reflex klystron 
n=2;//peak mode value
V0=300;//beam voltage in V
I0=0.02;//beam current in A
Vs=40;//signal voltage in V
J1=1.25;//bessel coefficient for n=2

//CALCULATION
Pdc=V0*I0;//The input power in watts
Pac=((2*Pdc*J1)/((2*n*(%pi))-((%pi)/2)));//The output power in watts
n=(Pac/Pdc)*100;//Efficiency in percentage

//OUTPUT
mprintf('\nThe input power is Pdc=%1.0f watts \nThe output power is Pac=%1.2f watts \nEfficiency is n=%2.1f percentage',Pdc,Pac,n);

//=========================END OF PROGRAM===============================

