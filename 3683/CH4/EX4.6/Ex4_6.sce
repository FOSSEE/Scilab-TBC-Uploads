Bf=1600//width, in mm
Df=100//thickness of slab, in mm
d=400//effective depth, in mm
Bw=225//breadth of web, in mm
b=Bw
W=30//UDL including self-weight, in kN/m
Ast=5*0.785*22^2//five 22 mm dia bars, in sq mm
l=9.2//span, in m
sigma_cbc=5//in MPa
sigma_sv=230//in MPa
Fy=415//in MPa
V=W*l/2//in kN
Tv=(V*10^3)/(b*d)//in MPa
Tcmax=1.6//in MPa
//Tv<Tcmax; OK
Pt=Ast/(b*d)*100//percentage tensile steel
//for given Pt and for M15 grade concrete
Tc=0.44//in MPa
Vs=V-Tc*b*d/10^3//in kN
//providing bent-up bars
Asv=0.785*22^2//in sq mm
Vs1=Asv*sigma_sv*sind(45)/10^3//in kN
//but shear taken up by bent-up bar is limited to Vs/2
Vs1=Vs/2//in kN
//providing 6 mm dia stirrups, which will take up remaining shear force
Vs2=Vs-Vs1//in kN
dia=6//in mm
Asv=2*0.785*dia^2//in sq mm
Sv=Asv*sigma_sv*d/(Vs2*10^3)//in mm
Sv1=105//round-off, in mm
//Sv<0.75d or 450 mm, whichever is less; hence OK
//calculating minimum spacing of shear reinforcement
Sv2=Asv*Fy/(b*0.4)//in mm
Sv2=260//round-off, in mm
//to calculate distance 'x' from support where shear stress in concrete is equal to Tc
x=Tc/Tv*l/2//in m
mprintf("Provide 6 mm dia stirrups at %d mm c/c upto %f m from both ends\nFor the remaining portion, provide 6 mm dia stirrups at %d mm", Sv1,(l/2-x),Sv2)
