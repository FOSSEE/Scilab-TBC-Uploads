Df=100//in mm
bf=1500//in mm
bw=300//in mm
d=600//in mm
Ast=4500//in sq mm
fy=415//in MPa
fck=20//in MPa
Asf=round(0.36*fck*bf*Df/0.87/fy)//area of steel required for flange, in sq mm
//as Ast>Asf, Xu>Df
Xu=(0.87*fy*Ast-0.446*fck*(bf-bw)*Df)/0.36/fck/bw//in mm
Xc=0.479*d//Xc>Xu; hence OK
a=0.43*Xu//as Df<0.43 Xu, stress in flange is uniform
Mu=(0.36*fck*bw*Xu*(d-0.416*Xu)+0.446*fck*(bf-bw)*Df*(d-Df/2))/10^6//in kN-m
mprintf("Moment of resistance of T-beam=%f kN-m",Mu)
