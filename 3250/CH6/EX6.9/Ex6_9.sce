clc
// Given that
a = 10 // Side length of a square hole in mm
t = 5 // Thickness of low carbon steel plate in mm
R = 50 // Resistance in relaxation circuit in ohm
C = 10 // Capacitance in relaxation circuit in micro F
V = 200 // Supply voltage in Volt
V_ = 150 // Minimum required voltage for discharge in Volt
// Sample Problem 9 on page no. 378
printf("\n # PROBLEM 6.9 # \n")
E = (1/2)*C*(10^-6)*(V_^2)
tc = R*C*(10^-6)*log(V/(V-V_))
W = (E/tc)*(10^-3)
v = t*a^2
Q = 27.4*(W^(1.54))
T = v/Q
printf("\n The time required to complete the drilling operation = %d min",T)
// Answer in the book is given as 306 min
