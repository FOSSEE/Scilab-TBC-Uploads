clear
//
//

//Given
//Variable declaration
Do=120          //External diameter in mm
P=300*1000      //Power in W
N=200           //Speed in r.p.m
tau=60          //Maximum shear stress in N/sq.mm

//Calculation
T=((P*60)/(2*%pi*N))*1e3                         //Torque transmitted in Nmm

Di=(((Do**4)-((T*16*Do)/(%pi*tau)))**(1/4))      //Maximum internal diameter in mm


//Result
printf("\n Maximum Internal diameter = %0.3f  mm",Di)
