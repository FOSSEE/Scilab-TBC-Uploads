clc
// Given that
R = 50 // Resistance in relaxation circuit in ohm
C = 10 // Capacitance in relaxation circuit in micro F
V = 200 // Supply voltage in Volt
V_ = 150 // Minimum required voltage for discharge in Volt
// Sample Problem 10 on page no. 382
printf("\n # PROBLEM 6.10 # \n")
E = (1/2)*C*(10^-6)*(V_^2)
tc = R*C*(10^-6)*log(V/(V-V_))
W = (E/tc)*(10^-3)
Q = 27.4*(W^(1.54))
Hrms = 1.11*(Q^0.384)
printf("\n Surface roughness = %f micro meter",Hrms)
// Answer in the book is given as 5.16 micro meter
