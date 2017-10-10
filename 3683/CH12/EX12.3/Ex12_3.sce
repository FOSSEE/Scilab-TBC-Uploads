sigma_cbc=5//in MPa
sigma_st=230//in MPa
phi=30//angle of repose, in degrees
H=5//height of wall, in m
B=0.6*H//assume, in m
T=B/4//assume toe to base ratio as 1:4
t=450//thickness of wall, in mm
W=16//density of retained earth, in kN/cu m
P=W*H^2/2*(1-sind(phi))/(1+sind(phi))//in kN
P=67//assume, in kN
y=1.8//in m
P=67//in kN
Wt=223//in kN
D=0.5//thickness of base, in m
x=1.8-P*(H/3+D/10^3)/Wt//in m
x=1.15//in m
e=B/2-x//in m
q1=Wt/B+Wt*e/(1*B^2/6)//maximum pressure, in kN/sq m
q2=Wt/B-Wt*e/(1*B^2/6)//minimum pressure, in kN/sq m
Pa=q1-(q1-q2)/B*T//pressure at A, in kN/sq m
Pa=100//assume, in kN/sq m
Pb=q1-(q1-q2)/B*(T+t/10^3)//pressure at B, in kN/sq m
Pb=85//assume, in kN/sq m
Ma=Pa*T^2/2+1/2*(q1-Pa)*T*2/3*T-T*D*25*T/2//bending moment at A, in kN-m
Ma=30//round-off, in kN-m
Mb=(B-T-t/10^3)^2*H*W/2+(B-T-t/10^3)^2*D*25/2-q2*(B-T-t/10^3)^2/2-(Pb-q2)*1/3*(B-T-t/10^3)^2/2//bending moment at B, in kN-m
Mb=80//in kN-m
//design of toe
d=sqrt(Ma*10^6/0.65/10^3)//in mm
D=d+10/2+70//<500 mm (provided), hence OK
D=500//in mm
d=D-70//in mm
Ast=Ma*10^6/sigma_st/0.9/d//in sq mm
Astmin=0.12/100*10^3*D//in sq mm
Ast=max(Ast,Astmin)//in sq mm
s1=1000*0.785*10^2/Ast//in mm
s1=130//assume, in mm
//distribution steel is same as above
//check for shear
V=(q1+Pa)/2*T//in kN
Tv=V*10^3/10^3/d//in MPa
//for M15 grade concrete and pt=0.32
Tc=0.2368//in MPa
//as Tc > Tv, no shear reinforcement required
//development length
dia=10//in mm
Tbd=0.84//in MPa
Ld=dia*sigma_st/4/Tbd//in mm
Ld=685//assume, in mm
//design of heel
d=sqrt(Mb*10^6/0.65/10^3)//< 430 mm (provided), hence OK
d=430//in mm
Ast=Mb*10^6/sigma_st/0.9/d//in sq mm
s2=1000*0.785*10^2/Ast//in mm
s2=85//assume, in mm
//distribution steel: 0.12% of Ag, hence provide 10 mm dia bars @ 130 mm c/c 
V=(B-T-t/10^3)*H*W-(Pb+q2)/2*(B-T-t/10^3)//in kN
Tv=V*10^3/10^3/d//in MPa
//for M15 grade concrete and pt=0.32
Tc=0.2368//in MPa
//as Tc > Tv, no shear reinforcement required
//development length
dia=10//in mm
Tbd=0.84//in MPa
Ld=dia*sigma_st/4/Tbd//in mm
Ld=685//assume, in mm
mprintf("Summary of design:\nThickness of base slab=%d mm. Refer to Fig. 12.11 of textbook for reinforcement details.",D)
//answer in textbook for spacing of 10 mm dia bars for main steel in toe and distribution steel is incorrect
