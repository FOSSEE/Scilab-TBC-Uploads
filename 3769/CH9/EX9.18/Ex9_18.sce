clear
//Given
q=1.6*10**-19               //C
r=0.6                        //m
m=1.67*10**-27               //Kg
f=10**7

//Calculation
//
B=(2*%pi*m*f)/q
K=((B**2*q**2*r**2)/(2.0*m))/1.6*10**-13

//Result
printf("\n Kinetic energy of the protons is %0.1f  Mev",K*10**26)
