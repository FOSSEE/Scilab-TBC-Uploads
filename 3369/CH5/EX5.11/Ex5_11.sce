//Chapter 5, Exmaple 11, page 180
//Calculate corona onset voltage and effective corona envelope
clc
clear
//(a) corona onset voltage
r = 3.175 // cm
h = 13 // m
m= 0.9 // m1 and m2
dt = 1 // Relative air density
E0 = 30*dt*(1 + 0.3/sqrt(r))*m*m
V0 = 20*r*log(2*h*10^2/r)
printf("\n E0 = %f kVpeak/cm or 20 kV/cm",E0)
printf("\n V0 = %f kV",V0)
printf("\n V0 (line to line) = %f kV",V0*sqrt(3))

//(b)Corona envelope at 2.5 p.u
V = 2.5*525 // line to line voltage * 2.5
printf("\n Voltage (line to line) = %f kV",V)
//Solving the equations in trila and error method
printf("\n Envelope radius = 5 cm")

// Answers may vary due to round off error.
 
