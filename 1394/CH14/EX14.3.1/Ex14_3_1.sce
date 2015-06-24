
clc
//initialization of variables
Rat1 = (6.5/3)*(1-0.47)// as Rat = x0/y0
m = 0.14 
H = (6.5*10^3)/3600 // Extract flow in g/sec
L = (3*10^3)/3600// Solvent flow in g/sec
d= 10 // cm
A = 0.25*%pi*d^2 // cm^2
l = 65 // cm
//Calculations and Results
Kya = ((H/(l*A))*(1/(1-((m*H)/L)))*(log((1-0.14*Rat1)/(0.47))))*10^3// kg/m^3-sec
printf("The value of Kya is %.2f  kg/m^3-sec",Kya)
Rat2 = (6.5/3)*(1-0.1)//For case B
l2 = l*(log(1/((1-0.14*Rat2)/(0.1))))/(log(1/((1-0.14*Rat1)/(0.47))))/100// m
printf("\nThe length for 90 percent recovery is %.1f m",l2)

