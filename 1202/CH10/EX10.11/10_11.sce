clear
clc

//Example 10.11
disp('Example 10.11')

Kc=poly(0,"Kc");//defining a polynomial variable
a2=2.5;a1=5.5-Kc;a0=1+2*Kc;//a# are coefficients
b1=(a1*a0-a2*0)/a1;
mprintf("Routh Array is")
A=[a2 a0;a1 0;b1 0]
disp(A)

mprintf("\n All entries in first column should be positive")

Kc_up=roots(a1);//upper limit for Kc by solving third row column 1 of array
b1=numer(b1);//This is done to extract the numerator from rational c1
//without extracting numerator we cannot find roots using "roots" function
Kc_ul=roots(b1);//lower limit for Kc

mprintf("\n\nThe values of Kc for system to be stable are \n   %f<Kc<%f",Kc_ul,Kc_up);

