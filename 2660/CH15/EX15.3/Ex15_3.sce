clc
Hb = 200 // brinell hardness
d = 12.7 // diameter in mm
f = 0.254 // feed in mm/rev.
N = 100 // rpm
M = (Hb*(d)^2*f)/8 //moment in kgf-mm
k = 1.1 //material factor
p = (1.25*(d)^2*k*N*(0.056+1.5*f))/(10)^5 // power in kW
T1a = (1.7*M)/d // thrust force kgf
T1b = (3.5*M)/d // kgf
T1 = (T1a+T1b)/2 // average
w = 0.14*d // thickness in mm
T2a = (0.1*%pi*(w)^2*Hb)/4 // thrust force kgf
T2b = (0.2*%pi*(w)^2*Hb)/4 // thrust force kgf
T2 = (T2a+T2b)/2 // average
avg = T1+T2 // kgf
thrust = 1.16*k*d*(100*f)^0.85 // kgf
printf("\n Moment = %0.1f kgf-mm\n Power = %0.3f hp\n Average force = %d kgf\n Thrust force = %0.1f kgf" ,M, p ,avg , thrust)
// Error in textbook
