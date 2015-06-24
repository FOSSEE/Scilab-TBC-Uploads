//Chapter 16,Example 1, page 556
//Determine the (a)ripple voltage (b)voltage drop (c)Average output volatge (d)ripple factor 
clear
clc
I1 = 5*10^-3 // A
C2 = 0.05*10^-6 // F
C1 = 0.01*10^-6 // F
Vs = 100 // kV
f = 50 // Hz 
// (a) Ripple voltage
printf("\n Part (a)")
delV = I1/(C2*f)
printf("\n Ripple Voltage = %f V", delV)
// (b) Voltage drop 
printf("\n Part (b)")
Vd = I1/f*((1/C1)+(1/(2*C2)))
printf("\n Voltage drop = %f V", Vd)
// (c) Average output voltage 
printf("\n Part (c)")
Vav = 2*Vs*sqrt(2)-Vd*10^-3
printf("\n Average output voltage = %f kV", Vav)
// (d) Ripple factor 
printf("\n Part (d)")
RF = Vd*10^-3/(2*Vs*sqrt(2)) 
printf("\n Ripple Factor in percentage = %f", RF*100)






