b=200//width, in mm
d=300//effective depth, in mm
Mu=74//in kN-m
top_cover=30//in mm
fck=20//in MPa
fy=415//in MPa
Xc=0.479*d//in mm
Mulim=0.138*fck*b*d^2/10^6//in kN-m
Ast1=round(0.36*fck*b*Xc/0.87/fy)//in sq mm
M1=Mu-Mulim//in kN-m
fcc=0.446*fck//in MPa
//for d'/d=30/300=0.1 and Fe415 grade steel,
fsc=353//in MPa
Asc=round(M1*10^6/(fsc-fcc)/(d-top_cover))//in sq mm
Ast2=round((fsc-fcc)*Asc/0.87/fy)//in sq mm
Ast=Ast1+Ast2//in sq mm
mprintf("Compression steel = %d sq mm\nTension steel = %d sq mm",Asc,Ast)
