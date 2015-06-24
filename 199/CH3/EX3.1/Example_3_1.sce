// Chapter3
// Page.No-75, Figure.No-3.2
// Example_3_1
// Parameters of voltage-series feedback amplifier
// Given
clear;clc;
R1=1000;Rf=10000;
A=200000; // Open-loop voltage gain
Ri=2*10^6; // Input resistance without feedback
Ro=75; // Output resistance without feedback
fo=5; // Break frequency of an Op-amp
Vsat=13; // Saturation voltage
B=R1/(R1+Rf); // Gain of the feedback circuit
Af=A/(1+A*B);  // Closed-loop voltage gain
printf("\n Closed-loop voltage gain is Af = %.2f \n",Af) // Result
RiF=Ri*(1+A*B); // Input resistance with feedback
printf("\n Input resistance with feedback is RiF = %.2f ohms \n",RiF) // Result
RoF=Ro/(1+A*B); // Output resistance with feedback
printf("\n Output resistance with feedback is RoF = %f ohms \n",RoF) // Result
fF=fo*(1+A*B); // Bandwidth with feedback
printf("\n Bandwidth with feedback is vo = %.1f Hz \n",fF) // Result
VooT=Vsat/(1+A*B); // Total output offset voltage with feedback
printf("\n Total output offset voltage with feedback is VooT = %f V \n",VooT) // Result