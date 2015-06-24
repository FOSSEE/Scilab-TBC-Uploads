// Chapter3
// Page.No-86, Figure.No-3.8
// Example_3_4
// Output voltage of voltage-shunt feedback amplifier
// Given
clear;clc;
R1=470;Rf=4.7*10^3;
A=200000; // Open-loop voltage gain
vin=1; // Input voltage in volts
K=Rf/(R1+Rf); // Voltage attenuation factor
B=R1/(R1+Rf); // Gain of the feedback circuit
Af=-(A*K)/(1+A*B);  // Closed-loop voltage gain
vo=Af*vin; // Output voltage
printf("\n Output voltage is vo = %.f V  \n",vo) // Result
t=0:0.1:2*%pi;
vo=-10*sin(t);
plot(t,vo);
title('Output Voltage');
xlabel('t');
ylabel('Vo');
