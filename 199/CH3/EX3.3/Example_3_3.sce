// Chapter3
// Page.No-86, Figure.No-3.8
// Example_3_3
// Parameters of voltage-shunt feedback amplifier
// Given
clear;clc;
R1=470;Rf=4.7*10^3;
A=200000; // Open-loop voltage gain 
Ri=2*10^6;// Input resistance without feedback
Ro=75; // Output resistance without feedback
fo=5; // Break frequency of an Op-amp
Vsat=13; // Saturation voltage
K=Rf/(R1+Rf); // Voltage attenuation factor
B=R1/(R1+Rf); // Gain of the feedback circuit
Af=-(A*K)/(1+A*B);  // Closed-loop voltage gain
printf("\n Closed-loop voltage gain is Af = %.f \n",Af) // Result
X=Rf/(1+A);
RiF=R1+(X*Ri)/(X+Ri); // Input resistance with feedback
printf("\n Input resistance with feedback is RiF = %.1f ohms \n",RiF) // Result
RoF=Ro/(1+A*B); // Output resistance with feedback
printf("\n Output resistance with feedback is RoF = %f ohms \n",RoF) // Result
fF=fo*(1+A*B)/K; // Bandwidth with feedback
printf("\n Bandwidth with feedback is vo = %.2f Hz \n",fF) // Result
VooT=Vsat/(1+A*B); // Total output offset voltage with feedback
printf("\n Total output offset voltage with feedback is VooT = %f V \n",VooT) // Result