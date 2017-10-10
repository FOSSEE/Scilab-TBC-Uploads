b=250//width, in mm
d=550//effective depth, in mm
fck=15//in MPa
fy=250//in MPa
M=95//in kN-m
Mu=1.5*M//factored moment, in kN-m
Mulim=0.149*fck*b*d^2/10^6//in kN-m
//as Mu<Mulim, no steel required on compression side
mprintf("As factored moment is less than limiting moment, no steel is required on compression side (as per LSM)")
