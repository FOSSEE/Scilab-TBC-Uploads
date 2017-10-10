
//Chapter 2 : Diffraction

clear;

//Variable declaration
n1=1
n2=2               
lamda=6000*10**-8          //wavelength
N=6000                     //number of lines for diffraction grating

//Calculations
theta1=((asin(n1*lamda*N))*180/%pi)
theta2=((asin(n2*lamda*N))*180/%pi)

//Result
mprintf("Angle between 1st and 2nd order line is %.2f degrees",(theta2-theta1))

