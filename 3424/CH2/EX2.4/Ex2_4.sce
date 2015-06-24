clc
//Initialization of variables
y = 9800 // N/m^3
Hc = 10 //m
A = 4*%pi //m^2
r = 2 // m
a = 60
Isc = (%pi*(r^4))/4 //m^4
yC  = 10/sind(a) //m
// Calculations
Fr = y*Hc*A
yR = Isc/(yC*A) + yC
df = yR - yC  
M =Fr*(df)
//Results
printf(" The magnitude of force of water is %.2f MN",Fr/10^6)
printf(" \nThe distance below the shaft to the centre is %.4f m",df)
printf(" \nThe moment required to open the gate is %.2e N.m",M)
