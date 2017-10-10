//Example 15.6
clc;

fc=1000;        //in Hz
Q=5;
Avo=8;
C=0.01*10^-6;    //Assumed

R1=Q*invr(2*%pi*fc*C*Avo);
//Assume a std value
R1=10000;

R2=Q*invr(2*%pi*fc*C*(2*Q^2-Avo));
//Assume a std Value
R2=2000;

R3=Q*invr(%pi*fc*C);
//Assume a std value
R3=150*10^3;

//Centre frequency is changed to 1.5 kHz
fc1=1500;
R21=R2*(fc/fc1)^2;
//Assume a std value
R21=820;

printf('\nValue of Capacitors C1, C2 & C3 = %.2f uF\n',C*10^6)
printf('\nValue of Resistor R1 = %.2f k ohm\n',R1/10^3)
printf('\nValue of Resistor R2 = %.2f k ohm\n',R2/10^3)
printf('\nValue of Resistor R3 = %.2f k ohm\n',R3/10^3)
printf('\nValue of Resistor R2 after changing centre frequency to 1.5 kHz= %.2f ohm\n',R21)