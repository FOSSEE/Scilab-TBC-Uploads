Df=120//in mm
bf=1100//in mm
bw=275//in mm
d=450//in mm
Ast=2700//in sq mm
fy=500//in MPa
fck=25//in MPa
Asf=round(0.36*fck*bf*Df/0.87/fy)//area of steel required for flange, in sq mm
//as Ast<Asf, Xu<Df
Xu=0.87*fy*Ast/0.36/fck/bf//in mm
Mu=0.36*fck*bf*Xu*(d-0.416*Xu)/10^6//in kN-m
mprintf("Moment of resistance of T-beam=%f kN-m",Mu)
