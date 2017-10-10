//Example 10.1, Page Number 497
//Sensor Periodicity
clc;
d=50*(10**-6) //Core Diameter in meters
n2=1.48 //Core refractive index
n1=1.46 //Cladding refractive index
a=d/2//in meters

n=(n2-n1)/n2;

delta=(2*%pi*a)/(sqrt(2*n)); //delta is the microbending sensor periodicity
disp(delta,"The Microbending Sensor Periodicity in m is:");
