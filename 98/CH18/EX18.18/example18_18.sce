//Chapter 18
//Example 18_18
//Page 451

clear;clc;

X1=%i*0.08;
X2=%i*0.07;
X0=%i*0.05;

//pu value
Er=1;

If=-3*X2*Er/(X1*X2+X1*X0+X2*X0);
printf("Fault current = j%d p.u \n\n", imag(If));
