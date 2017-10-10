//Example 5.1
clc;

R=100*10^3;        //Given value of resistence
C=1*10^-6;         //Given value of Capacitor
Vin=1;             //Input Voltage
t=1;               //Given time
Vo=Vin*t/(R*C);    //Output Voltage after time t
disp(Vo,'Output Voltage')