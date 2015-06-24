clc
//Initialzation of variables
xN2=0.780
xO2=0.210
xAr=0.009
P=100 //kPa
//Calculations
PN2=xN2*P
PO2=xO2*P
PAr=xAr*P
//Results
printf('Partial pressure of Nitrogen(kPa) = %.1f',PN2)
printf('\n Partial pressure of Oxygen(kPa) = %.1f',PO2)
printf('\n Partial pressure of Argon(kPa) = %.1f',PAr)
