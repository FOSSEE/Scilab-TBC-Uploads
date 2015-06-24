clc
f = 0.2 // feed in mm/rev.
N = 800 // spindle speed in rev./min.
d = 10 // doameter of hole in mm
mrr = %pi*(d^2)*f*N/4 // metal removal rate in mm^3/min.
mrr = mrr/60 // mm^3/s
p = 0.5*mrr // cutting power from table 14.2 in watts
omega = 2*%pi*N/60 // rpm
T = p/omega // torque in N.m
printf("\n MRR = %0.2f mm^3/s\n Cutting power = %0.3f watts\n Torque = %0.2f N.m" , mrr,p,T)
