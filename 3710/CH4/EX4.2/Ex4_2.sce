//Example 4.2, Page Number 152
//The Function fpround(dependency) is used to round a floating point number x to n decimal places
clc;

n1=3.6//For GaAs/Air Interface
n2=1//For Air

//Using Equation 4.14
n3=n1-n2
n4=n1+n2
n6=(n3/n4)**2
n5=(n2/n1)**2

F=0.25*(n5)*(1-n6) //F is the Fractional Transmission for Isotropic Radiation 
F=fpround(F,3)

theta=asin(1/n1)  //Critical Angle in Degrees
theta=theta *(180/%pi)
theta=fpround(theta,0)

mprintf("The Fractional Tranmission for Isotropic Radiation originating inside GaAs is:%.3f \n",F)
mprintf(" The Critical Angle is:%d Degrees",theta)
