//Example number 10.4, Page number 225

clc;clear;
close;

//Variable declaration
Hc=2*10**3;    //critical magnetic field(A/m)
r=0.02;    //radius(m)
//Calculation
Ic=2*%pi*r*Hc;     //critical current(amp)
//Result
printf("critical current is %.1f A",Ic)
//answer in the book varies due to rounding off errors
