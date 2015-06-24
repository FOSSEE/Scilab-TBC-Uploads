clc
l = 300 // length in mm
w = 100 // width in mm
f = 0.25 // feed in mm/tooth
d = 3.2 // depth of cut in mm
D = 50 // cutter diameter in mm
n = 20 // number of cutter teeth
N = 100 // cutter speed in rev./min.
tf = f*n*N // table feed in mm/min.
mrr = w*d*tf // metal removal rate in mm^3/min.
mrr = mrr/60 // mm^3/s
p = 6*mrr // cutting power from table 14.2 in watts
omega = 2*%pi*N/60 // rpm
T = p/omega // torque in N.m
att = sqrt((D*d)-(d^2)) // added table travel in mm
t = (l+att)/tf // cutting time in min.
t = t*60 // s
printf("\n MRR = %0.2f mm^3/s\n Cutting power = %d watts\n Torque = %0.2f N.m\n Cutting time = %0.1fs" , mrr,p,T,t)
