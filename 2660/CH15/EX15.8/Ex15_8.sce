clc
l = 150 // length in mm
D = 12.70 // diameter in mm
dia = 12.19 // diameter on centre lathe in mm 
N = 400 // spindle speed in rev./min
s = 203.20 // axial speed in mm/min.*####
v = (%pi*D*N)/(1000*60) // cutting velocity in m/s
d = (D-dia)/2 // depth of cut in mm
f = s/N // feed in mm/rev.
Dave = (D+dia)/2 // average diameter in mm
V = %pi*Dave*N
a = d*f // area of cut in mm^2
mrr = a*V // metal removal rate in mm^3/min.
T = l/(f*N) // machine timing in min.
c = 56 // constant from table 
p = d*f*v*60*c // power in watts
omega = (2*%pi*N)/60 // rpm
t = p/omega // torque in Nm
Fc = (2*t*1000)/Dave // cutting force in N
printf("\n Cutting speed = %0.2f m/s\n MRR = %d mm^3/min.\n Time to cut = %0.2f min.\n Power = %0.1f watts\nCutting force = %d N" , v , mrr , T ,p ,Fc)
// Answers are given wrong in book
