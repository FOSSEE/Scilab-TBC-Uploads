Df=100//in mm
bf=1250//in mm
bw=250//in mm
d=550//in mm
Mu=400//in kN-m
fy=415//in MPa
fck=15//in MPa
Asf=0.446*fck*(bf-bw)*Df/0.87/fy//in sq mm
Muf=0.446*fck*(bf-bw)*Df*(d-Df/2)/10^6//in kN-m
Muw=Mu-Muf//in kN-m
//using Cu=Tu, 0.36 fck bw Xu = 0.87 fy Ast, Xu = a Asw
a=0.87*fy/0.36/fck/bw
//Muw=0.87 fy Asw (d-0.416 Xu)
p=0.87*fy*0.416*a
q=-0.87*fy*d
r=Muw*10^6
Asw=(-q-sqrt(q^2-4*p*r))/2/p//in sq mm
Ast=Asw+Asf//in sq mm
mprintf("Area of steel required=%f sq mm",Ast)

