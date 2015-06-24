//Chapter 16,Example 3, page 557
//Determine the (a)ripple voltage (b)voltage drop (c)Average output volatge (d)ripple factor (e)optimum number of stages
clear
clc
I1 = 5*10^-3 // A
C = 0.15*10^-6 // F
Vs = 200 // kV
f = 50 // Hz 
n = 12
// (a) Ripple voltage
printf("\n Part (a)")
delV = I1*n*(n+1)/(f*C*2)
printf("\n Ripple Voltage = %f kV", delV*10^-3)
// (b) Voltage drop 
printf("\n Part (b)")
a = I1/(f*C)
Vd = a*((2/3*n^3)+(n^2/2)-(n/6)+(n*(n+1)/4))
printf("\n Voltage drop = %f kV", Vd*10^-3)
// (c) Average output voltage 
printf("\n Part (c)")
Vav = 2*n*Vs*sqrt(2)-Vd*10^-3
printf("\n Average output voltage = %f kV", Vav)
// (d) Ripple factor 
printf("\n Part (d)")
RF = Vd*10^-3/(2*n*Vs*sqrt(2)) 
printf("\n Ripple Factor in percentage = %f", RF*100)
// (e) Optimum number of stages
printf("\n Part (e)")
nopt = sqrt(Vs*sqrt(2)*10^3*f*C/I1) 
printf("\n Optimum number of stages = %d stages", nopt)

// Answers may vary due to round off error
