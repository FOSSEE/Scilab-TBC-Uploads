b=250//width, in mm
d=500//effective depth, in mm
W=20//UDL including self-weight, in kN/m
Pt=1//percentage tensile steel
l=6//span, in m
V=W*l/2//in kN
Tv=(V*10^3)/(b*d)//in MPa
//for Pt=1% and for M15 grade concrete
Tc=0.37//in MPa
//as Tv>Tc, shear reinforcement is required
mprintf("Nominal shear stress in beam=%f MPa\nShear strength of concrete=%f MPa", Tv,Tc)
