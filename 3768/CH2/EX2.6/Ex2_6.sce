//Example number 2.6, Page number 33

clc;clear;
close;

// Variable declaration
r1=1.258*10**-10;     // radius(m)
r2=1.292*10**-10;     // radius(m)

// Calculation
a_bcc=4*r1/sqrt(3);
v=a_bcc**3;
V1=v/2;
a_fcc=2*sqrt(2)*r2;
V2=a_fcc**3/4;
V=(V1-V2)*100/V1;           // percent volume change is",V,"%"

// Result
printf( "percent volume change is %.1f %%",V)
