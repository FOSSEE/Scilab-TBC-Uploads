//Chapter 2 : Diffraction

clear;

//Variable declaration
lamda1=5890*10**-8         //waveleght
lamda2=5896*10**-8         //waveleght
N=6000                     //number of lines for diffraction grating

//Calculations
theta1=((asin(2*lamda1*N))*180/%pi)
theta2=((asin(2*lamda2*N))*180/%pi)

//Result
mprintf("Angular separation= %.2f degrees",(theta2-theta1))

