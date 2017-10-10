//Chapter 8 Chemical Equlibrium

clc;
clear;

//Initialisation of Variables
pno2= 0.31 //atm
pn2o2= 0.69 //atm
p= 10 //atm

//CALCULATIONS
Kp= pno2**2/pn2o2
x= (-Kp+sqrt(Kp**2+4*4*p*Kp))/(2*4)
p1= p-x
p2= 2*x

//RESULTS
mprintf("Kp= %.2f",Kp)
mprintf("\nN2O4= %.2f",p1)
mprintf("\nNO2= %.2f",p2)
