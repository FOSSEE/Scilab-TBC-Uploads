//Example 5.3, Page Number 184
//Small signal gain coefficient
clc;
//For Nd:YAG
t=230*(10**-6) //Spontaneous Lifetime in seconds
l=1.06*(10**-6) //Wavelength in meter
n=1.82 //Refractive Index
w=3*(10**12) //Linewidth in Hertz
h=6.6*(10**-34) //Plancks Constant in meter square kilogram per second

B21=(l**3)/(8*%pi*h*t*(n**3)) //B21 is the Einstein Coefficient in metre cube per W second cube

k=1

kvs=(k*l*w)/(B21*h*n) //Small Signal Gain Coefficient per meter cube

mprintf("Small Signal Gain Coefficient is %0.2e /meter cube",kvs);
