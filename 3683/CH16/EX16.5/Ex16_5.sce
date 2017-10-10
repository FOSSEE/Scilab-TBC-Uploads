Df=100//in mm
bf=1250//in mm
bw=250//in mm
d=660//in mm
fy=250//in MPa
fck=15//in MPa
Xc=0.531*d//in mm
a=0.43*Xc//Df<0.43 Xu, stress in entire flange is uniform
Mu=(0.36*fck*bw*Xc*(d-0.416*Xc)+0.446*fck*(bf-bw)*Df*(d-Df/2))/10^6//in kN-m
Ast=(0.36*fck*bw*Xc+0.446*fck*(bf-bw)*Df)/0.87/fy//in sq mm
mprintf("Moment of resistance of T-beam=%f kN-m\nArea of steel required=%f sq mm",Mu,Ast)
