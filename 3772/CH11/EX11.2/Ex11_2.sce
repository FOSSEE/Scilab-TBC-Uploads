// Problem 11.2,Page no.274

clc;clear;
close;

d=2 //cm //Diameter of specimen

//Calculations

//Let P be the Load on the section

A=%pi*4**-1*d**2 //cm**2 //Area of section
I=%pi*64**-1*d**4 //cm**4 //M.I of the section
y=d*2**-1 //cm
Z=I*y**-1 //cm**3 //Section modulus
//M=P.e //Moment

//Stress due to direct load
//sigma_d=(4*P)*(%pi*d**2)**-1 //N/cm**2

//stress due to moment
//sigma_b=(32*P*e)*(%pi*d**3)**-1 N/cm**2

//Maximum stress
//sigma_r_max=(((4*P)*(%pi*d**2)**-1)+((32*P*e)*(%pi*d**3)**-1))

//Mean stress 
//sigma_r_mean=((4*P)*(%pi*d**2)**-1) 

//Since the maximum stress is 20% greater than the mean stress 
//(((4*P)*(%pi*d**2))+((32*P*e)*(%pi*d**3)))=1.2*4*P*(%pi*d**2)**-1

//After substituing values and simplifyinf we get

e=0.2*d*8**-1 //cm //distance of line of thrust from the axis

//Result
printf("The distance of line of thrust from the axis is %.2f",e);printf(" cm")
