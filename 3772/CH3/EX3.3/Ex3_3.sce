// Problem 3.3,Page no.56

clc;clear;
close;

P=800 //N //force applied to steel wire
L=150 //m //Length of steel wire
E=200 //GN/m**2 //Modulus of Elasticity
d=10 //mm //Diameter of steel wire
W=7.8*10**4 //N/m**3 //Weight Density of steel
//A=(%pi*4**-1)*(d)**2 //m**2

//After simplifying Area,we get
A=7.85*10**-5 //m**2

//calculation (Part-1)

//Elongation Due to 800N Load 
dell_L_1=(P*L*10**-3)*(A*E*10**9*10**-6)**-1 //mm

//calculation (Part-2)

//Elongation due to Weight of wire 
dell_L_2=((%pi*4**-1)*150*W*L*10**-3)*(2*A*E*10**7)**-1 //mm

//calculation (Part-3)

//Total Elongation of wire
dell_L_3=dell_L_1+dell_L_2


//Result
printf("The Elongation due to 800N Load  = %.2f mm",dell_L_1)
printf("\n The Elongation due to Weight of wire  = %.2f mm",dell_L_2)
printf("\n Total Elongation of wire  = %.2f mm",dell_L_3)
