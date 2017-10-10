//Example 8.7, Page Number 383
//The Function fpround(dependency) is used to round a floating point number x to n decimal places
//Intermodal Dispersion
clc;

n1=1.48//refractive index 
n2=1.46//refractive index
l=10**3 //Length of the Fiber in kilometer
c=3*(10**8) //Speed of light meters per second

delta=((n1**2)-(n2**2))/(2*(n1**2)) //delta is one of the fiber parameter
delta=fpround(delta,4)

//Using Equation 8.26
t=(l*n1*(delta**2))/(c*8) //t is the minimum pulse broadening

mprintf("The Delta Paramter is:%.4f\n",delta)
mprintf(" The Minimum Pulse Broadening is %.2e s",t)
