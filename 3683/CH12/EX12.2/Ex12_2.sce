sigma_cbc=5//in MPa
sigma_st=140//in MPa
phi=35//angle of repose, in degrees
H=6//height of wall, in m
B=0.4*H//assume, in m
T=B/4//assume toe to base ratio as 1:4
W=18//density of retained earth, in kN/cu m
P=W*H^2/2*(1-sind(phi))/(1+sind(phi))//in kN
P=88//assume, in kN
M1=P*H/3//in kN-m
//bending moment at 3 m below the top
h=3//in m
M2=W*h^2/2*(1-sind(phi))/(1+sind(phi))*h/3//in kN-m
M2=22//in kN-m
//thickness of stem (at the base)
d=sqrt(M1*10^6/0.87/1000)//in mm
d=450//in mm
dia=20//assume 20 mm dia bars
D1=d+dia/2+25//in mm
D2=200//thickness at top, in mm
D3=D2+(D1-D2)*h/H//in mm
d3=sqrt(M2*10^6/0.87/1000)//in mm
D3=d3+dia/2+25//< 342.5 mm (provided), hence OK
D3=342.5//in mm
d3=D3-dia/2-25//in mm
//main steel
//(a) 6 m below the top
Ast=M1*10^6/sigma_st/0.87/d//in sq mm
//provide 20 mm dia bars
s1=1000*0.785*20^2/Ast//in mm
s1=95//assume, in mm
//(b) 3 m below the top
Ast=M2*10^6/sigma_st/0.87/d3//in sq mm
//provide 10 mm dia bars
s2=1000*0.785*10^2/Ast//in mm
s2=130//assume, in mm
//distribution steel
Ads=0.15/100*10^3*D3//in sq mm
//provide 10 mm dia bars
s3=1000*0.785*10^2/Ads//in mm
s3=150//assume, in mm
//check for shear
V=P//in kN
Tv=V*10^3/10^3/d//in MPa
//for M15 grade concrete and pt=0.71
Tc=0.34//in MPa
//as Tc > Tv, no shear reinforcement required
//development length
//(a) At the base of stem
dia=20//in mm
Tbd=0.6//in MPa
Ld=dia*sigma_st/4/Tbd//in mm
Ld=1170//assume, in mm
//(b) At 3 m below the top
dia=10//in mm
Ld=dia*sigma_st/4/Tbd//in mm
Ld=590//assume, in mm
//check for stability
D4=500//thickness of base, in mm (assume)
V1=1/2*(D1-D2)/10^3*H*25//in kN
V2=(D2/10^3)*H*25//in kN
V3=(D4/10^3)*B*25//weight of base, in kN
V4=(B-T-D1/10^3)*H*W//in kN
V=V1+V2+V3+V4//in kN
M=V1*(T+2/3*(D1-D2)/10^3)+V2*(T+(D1-D2)/10^3+D2/10^3/2)+V3*B/2+V4*(B-(B-T-D1/10^3)/2)//in kN-m
x=M/V//in m
//factor of safety
//for overturning
F1=V*x/P/(H/3)//> 1.5, hence OK
mu=0.5
//for sliding
F2=mu*V/P//< 1.5, hence it is not safe against sliding
mprintf("Summary of design:\nThickness of stem (at base) = %d mm\nThickness of stem at top = %d mm\nRefer Fig. 12.7 of textbook for reinforcement details",D1,D2)
//answers in textbook for factor of safety against overturning and sliding are incorrect
