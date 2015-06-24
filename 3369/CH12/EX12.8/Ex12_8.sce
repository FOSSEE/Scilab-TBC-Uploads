//Chapter 12,Example 8, page 411
//Determine the maximum stress 
clear
clc
ba = 5.3/2 // b/a
alpha = nthroot(ba,3)
r1 = 1.385 // cm
r2 = 1.92 // cm
r = 2.65 // cm
V = 66*sqrt(2)/sqrt(3)
V2 = V/(1+(1/alpha)+(1/alpha^2))
V1 = (1+1/alpha)*V2
//calculating maximim and minimum stress without sheaths
Emax0 = V/1*log(r/1)
Emin0 = V/(r*log(r))
//calculating max and min stress with the sheaths
Emax = Emax0*3/(1+(alpha)+(alpha^2))
Emin = Emax/alpha
printf("\n Peak voltage of the conductor V = %f kV",V)
printf("\n V1 = %f kV",V1)
printf("\n V2 = %f kV",V2)
printf("\n Maximum stress without sheaths = %f kV/cm",Emax0)
printf("\n Minimum stress without sheaths = %f kV/cm",Emin0)
printf("\n Maximum stress with sheaths = %f kV/cm",Emax)
printf("\n Minimum stress with sheaths = %f kV/cm",Emin)

// Answers vary due to round off errors.
