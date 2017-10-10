//Ex 2.4 page 68

clc;
clear;
close;

// VG=0.5+8*IG -- eqn(1)
f=400; // Hz
delta=0.1 ; // (Duty Cycle)
P=0.5;//W
VS=12;// V

Tp=1/f*10**6;// us
// P= VG*IG -- eqn(2)
// solving eqn  1 and 2
//8*IG*IG**2+0.5*IG-P=0
p=[8, 0.5, -P] // polynomial for IG
IG=roots(p) ;// A 
IG=IG(2) ;// A (discarding -ve value)
VG=0.5+8*IG;// V
// VS=VG+IG*RS
RS=(VS-VG)/IG
printf('Value of resistance to be added in series = %.2f ohm',RS)
