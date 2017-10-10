//Example 6_4_u1
clc();
clear;
//To calculate the ratio of populations of two energy levels
h=6.63*10^-34      //units in m^2 kg s^-1
c=3*10^8            //units in meter/sec
lamda=694.3              //units in nm
lamda=lamda*10^-9        //units in meters
kb=1.38*10^-23               //units in m^2 kg s^-2 K^-1
T=300                     //units in K
n1_n2=exp((h*c)/(lamda*kb*T))
printf("The ratio of Populations of two energy levels is N1/N2=")
disp(n1_n2);
