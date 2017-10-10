//Example 5.3
clc;

R=100*10^3;        //Given value of resistence
C=2*10^-6;         //Given value of Capacitor
Vin=2;             //Input Voltage
t=2;               //Given time
Vo=Vin*t/(R*C);    //Output Voltage after time t
disp(Vo,'Output Voltage')