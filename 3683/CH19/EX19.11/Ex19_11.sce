fck=15//in MPa
fy=415//in MPa
phi=30//angle of repose, in degrees
H=5//height of wall, in m
B=0.6*H//assume, in m
T=B/4//assume toe to base ratio as 1:4, in m
W=16//density of retained earth, in kN/cu m
Wu=1.5*W//factored load, in kN/cu m
P=Wu*H^2/2*(1-sind(phi))/(1+sind(phi))//in kN
M1=P*H/3//in kN-m
M1=167//round-off, in kN-m
//bending moment at 2.5 m below the top
h=2.5//in m
M2=Wu*h^2/2*(1-sind(phi))/(1+sind(phi))*h/3//in kN-m
M2=21//round-off, in kN-m
//thickness of stem (at the base)
d=sqrt(M1*10^6/0.138/fck/1000)//in mm
d=285//round-off, in mm
dia=20//assume 20 mm dia bars
D1=d+dia/2+25//in mm
D2=200//thickness at top, in mm
D3=D2+(D1-D2)*h/H//thickness at 2.5 m below top, in mm 
d3=sqrt(M2*10^6/0.138/fck/1000)//in mm
D3=d3+dia/2+25//< 260 mm (provided), hence OK
D3=260//in mm
d3=D3-dia/2-25//in mm
//main steel
//(a) 5 m below the top
//Xu=0.87*fy*Ast/0.36/fck/b = a*Ast
a=0.87*fy/0.36/fck/10^3
//using Mu=0.87 fy Ast (d-0.416 Xu), we get a quadratic equation
p=0.87*fy*0.416*a
q=-0.87*fy*d
r=M1*10^6
Ast=(-q-sqrt(q^2-4*p*r))/2/p//in sq mm
pt=Ast/1000/d*100//in %
//provide 20 mm dia bars
s1=1000*0.785*20^2/Ast//in mm
s1=155//round-off, in mm
//(b) 2.5 m below the top
//Xu=0.87*fy*Ast/0.36/fck/b = a*Ast
a=0.87*fy/0.36/fck/10^3
//using Mu=0.87 fy Ast (d-0.416 Xu), we get a quadratic equation
p=0.87*fy*0.416*a
q=-0.87*fy*d3
r=M2*10^6
Ast=(-q-sqrt(q^2-4*p*r))/2/p//in sq mm
Astmin=0.12/100*10^3*D3//in sq mm
Ast=max(Ast,Astmin)//in sq mm
//provide 12 mm dia bars
s2=1000*0.785*12^2/Ast//in mm
s2=360//round-off, in mm
//distribution steel
Ads=0.12/100*10^3*D3//in sq mm
//provide 8 mm dia bars
s3=1000*0.785*8^2/Ads//in mm
s3=160//round-off, in mm
//check for shear
Vu=P//in kN
Tv=Vu*10^3/10^3/d//in MPa
//for M15 grade concrete and pt=0.71
Tc=0.54//in MPa
//as Tc > Tv, no shear reinforcement required
//development length
//(a) At the base of stem
dia=20//in mm
Tbd=1.6//in MPa
Ld=dia*0.87*fy/4/Tbd//in mm
Ld=1130//round-off, in mm
//(b) At 2.5 m below the top
dia=12//in mm
Ld=dia*0.87*fy/4/Tbd//in mm
Ld=680//round-off, in mm
mprintf("Summary of design:\nThickness of stem (at base) = %d mm\nThickness of stem at top = %d mm\nRefer Fig. 19.10 of textbook for reinforcement details",D1,D2)
