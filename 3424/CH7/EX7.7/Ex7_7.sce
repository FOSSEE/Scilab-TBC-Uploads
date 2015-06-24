clc
// Intialization of variables
Rw = 1/15 // Ratio of widths 
Q = 125 // m^3/s
t = 24 // hr
w = 20 //m
//calculations
Qm = Q*(Rw)^2.5
tm = t*(Rw)^0.5
wm = w*Rw
// results
printf(" the required model width is %.3f m",wm)
printf(" \nthe required model flow rate is %.3f m^3/s",Qm)
printf(" \nthe operating model for a 24 hr period prototype is %.2f hr",tm)
