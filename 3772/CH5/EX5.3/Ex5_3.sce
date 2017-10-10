// Problem 5.3,Page no.123

clc;clear;
close;

b=10 //cm //width of beam
d=20 //cm depth of beam

//Calculations

//R_a and R_b are the reactions at A and B respectively.
//Moment of all forces about A

R_b=(4*4*4*2**-1-2*1.5)*(2)**-1 //KN 
//R_a+R_b=18 
R_a=18-R_b

//Consider a section at a distance x from A
//M_x=9.25*x-2(x-1.5)-4*x*x*2**-1=7.25*x+3-2*x**2 

//Taking derivative of above equation to find max value of M_x we get
x=1.81 //m

M=7.25*x+3-2*x**2 //kN*m 
I=b*d**3*12**-1 //cm**4 //M.I of the section
y=10 
sigma=M*I**-1*y*10**8*(10**2)**-1 //Max bending stress

//Result
printf("The Max Bending stress is %.2f kN/m^2",sigma)
