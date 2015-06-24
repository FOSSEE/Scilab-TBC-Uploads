clc
// initialization of variables
// The reaction equation is 
//CaHb + c(O2+3.76N2)---> 10.4CO2 + 1.2CO + 2.8O2 + 85.6N2 + dH2O

// using atomic balancing
// C:a=10.4+12
//N:3.76c=85.6
//O:2c=20.8+1.2+5.6+d
//H:b=2d

// Solving these equations using matrix
A=[1 0 0 0;0 0 3.76 0;0 0 2 -1;0 1 0 -2]
B=[11.6;85.6;27.6;0]
x=A\B 
a=x(1)
b=x(2)
c=x(3)
d=x(4)

// substituing these values in reaction equation
//C11.6H37.9 + 21.08(O2+3.76N2)---> 11.6CO2 + 18.95H2O + 79.26N2
%theoriticalair=22.8*100/21.08 // theoritical air
excessair=%theoriticalair-100

printf("The excess air is %i %%",excessair)



