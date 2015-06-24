//Chapter 12,Example 9, page 412
//Determine the maximum stress 
clear
clc
Emax = 47.5 // kV
b = 2.65 // cm
a = 1 // cm
ba = 0.55*3 // 1/3(b-a)
r1 = 1.55 // cm
r2 = 2.1 // cm2Vr = 2.65 // cm  
V = 53.8 // kV
alpha = nthroot(ba,3)
// based on the example 12_8 
//calculating VEmax1, Emax2, Emax3 
x = 1/(a*log(r1/a))
y = 1/(r1*log(r2/r1))
z = 1/(r2*log(b/r2))
VV1 = Emax/x
V1V2 = Emax/y
V2 = Emax/z
V1 = V2+(Emax/y)
printf("\n Emax = %f kV/cm",Emax)
printf("\n V1 = %f kV/cm",V1)
printf("\n V2 = %f kV/cm",V2)

// Answers may vary due to round off error.
