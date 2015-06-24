//Example 2.19//unknown resistance ,capacitance and dissipation factor
clc;
clear;
f=1;//frequency in kHz
R1=1.5;//in killo ohms
C1=0.4;//in micro farads
R2=3;//in killo ohms
C3=0.4;//in micro farads
Rx=(R2*C1)/(C3);//unknown resistance in killo ohms
Cx=(R1*C3)/(R2);//UNKNOWN CAPACITANCE IN MICRO FARADS
D= 2*%pi*f*Cx*10^-6*Rx*10^3*10^3;//DISSIPATION FACTPR
disp(Rx,"unknown resistance in killo ohms")
disp(Cx,"unknown capacitance in micro farads")
disp(D,"dissipation factor is")
