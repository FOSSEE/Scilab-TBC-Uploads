//Chapter 12 : Semiconductor Physics

clear;

//Variable declaration
Eg=0.8                 //Energy gap width
T=300
m=9.1*10**-31          //mass of electron
k=1.38*10**-23
h=6.63*10**-34         

//Calculations
ni=2*((2*22*m*k*T)/(7*h**2))**(3/2)*exp((-Eg*1.6*10**-19)/(2*k*T))/10**18

//Result
mprintf("Concentration of intrinsic charge= %.2f*10**18 /m**3",ni)
 //The answer provided in the textbook is wrong

