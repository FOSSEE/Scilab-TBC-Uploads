b=300//width, in mm
d=600//effective depth, in mm
fck=15//in MPa
fy=500//in MPa
Xc=0.456*d//in mm
Mu=0.36*fck*b*Xc*(d-0.416*Xc)/10^6//in kN-m
Ast=round(0.36*fck*b*Xc/0.87/fy)//in sq mm
mprintf("Moment of resistance of the beam=%f kN-m\nSteel required=%d sq mm", Mu,Ast)
