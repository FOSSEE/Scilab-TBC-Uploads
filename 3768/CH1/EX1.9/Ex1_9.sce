//Example number 1.9, Page number 13

clc;clear;
close;

//Variable declaration
a=7.68*10**-29;     
r0=2.5*10**-10;    //radius(m)

//Calculation
b=a*(r0**8)/9;
y=((-2*a*r0**8)+(90*b))/r0**11;    
E=y/r0/10**9;           //young's modulus(GPa)

//Result
printf( "young''s modulus is %d GPa",E)
