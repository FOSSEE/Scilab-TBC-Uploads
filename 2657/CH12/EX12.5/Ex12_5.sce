//Calculations on diesel engine fuel pump
clc,clear
//Given:
V_b=7 //Volume of fuel in the barrel in cc
D_l=3,L_l=700 //Diameter and length of fuel delivery line in mm
V_iv=3 //Volume of fuel in the injection valve in cc
P2=200 //Delivery pressure in bar
P1=1 //Sump pressure in bar
V_d=0.15 //Volume to be delivered in cc
C=78.8D-6 //Coefficient of compressibility
d=8 //Diameter of the plunger in mm
//Solution:
V_l=%pi/4*D_l^2*L_l*10^-3 //Volume of fuel in delivery line in cc
V1=V_b+V_l+V_iv //Total initial fuel volume in cc
deltaV=C*(P2-P1)*V1 //Change in volume due to compression in cc
V_p=deltaV+V_d //Displaced volume by plunger in cc
A_p=%pi/4*d^2*10^-2 //Area of the plunger in cm^2
l=V_p/A_p //Effective stroke of plunger in cm
//Results:
printf("\n The plunger displacement = %.3f cc",V_p)
printf("\n The effective stroke of the plunger, l = %.2f mm\n\n",l*10)
