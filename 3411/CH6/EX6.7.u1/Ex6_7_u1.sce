//Example 6_7_u1
clc();
clear;
//To calculate the no of photons emitted by the ruby laser
p=1       //units in Watts
lamda=694.3           //units in nm
lamda=lamda*10^-9       //units in meters
h=6.63*10^-34            //units in m^2 kg s^-1
c=3*10^8                        //units in meter/sec
n=(p*lamda)/(h*c)
printf("The no of photons emitted by the ruby laser is n=")
disp(n)
