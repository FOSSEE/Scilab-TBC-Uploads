l=7//span, in m
fck=15//in MPa
fy=250//in MPa
b=300//assume, in mm
W=35//live load, in kN/m
Wu=1.5*W//in kN/m
Mu=Wu*l^2/8//in kN-m
d=(Mu*10^6/0.149/fck/b)^0.5//in mm
d=1.1*d//increase depth by 10% for self-weight
d=750//assume, in mm
c=50//cover, in mm
D=d+c//in mm
W1=(b/10^3)*(D/10^3)*25//self-weight, in kN/m
W2=35//live load, in kN/m
W=W1+W2//in kN/m
Wu=1.5*W//in kN/m
Mu=Wu*l^2/8//in kN-m
d=(Mu*10^6/0.149/fck/b)^0.5//<750 mm, hence OK
d=750//in mm
//steel
//Xu=0.87*fy*Ast/0.36/fck/b = a*Ast
a=0.87*fy/0.36/fck/b
//using Mu=0.87 fy Ast (d-0.416 Xu), we get a quadratic equation
p=0.87*fy*0.416*a
q=-0.87*fy*d
r=Mu*10^6
Ast=(-q-sqrt(q^2-4*p*r))/2/p//in sq mm
//provide 20 mm dia bars
n=Ast/0.785/20^2
//provide 8-20 mm + 2-18 mm dia bars
Ast=8*0.785*20^2+2*0.785*18^2//in sq mm
pt=Ast/b/d*100//pt=1.34
Vu=Wu*l/2//in kN
Tv=Vu*10^3/b/d//in MPa
//for M15 and pt=1.34
Tc=0.65//in MPa
//as Tv>Tc, shear reinforcement required
//provide 6 mm stirrups
Vus=Vu-Tc*b*d/10^3//in kN
Asv=2*0.785*6^2//in sq mm
Sv=Asv*0.87*fy*d/Vus/10^3//in mm
Sv=130//assume, in mm
Svmin=Asv*fy/0.4/b//in mm
Svmin=115//assume, in mm
Sv=min(Sv,Svmin)//in mm
mprintf("Summary of design:\nBeam size - %d x %d mm\nCover - 50 mm\nSteel - 8-20 mm + 2-18 mm dia bars\nStirrups - 6 mm dia @ %d mm c/c",b,D,Sv)
//deflection check
Ec=5700*sqrt(fck)//in MPa
Es=2*10^5//in MPa
m=Es/Ec
fcr=0.7*sqrt(fck)//in MPa
//using b x x/2 = m Ast (d-x), we get a quadratic equation
//solving the quadratic equation
p=b/2
q=m*Ast
r=-m*Ast*d
x=(-q+sqrt(q^2-4*p*r))/2/p//in mm
x=290//assume, in mm
z=d-x/3//in mm
Ir=b*x^3/12+b*x*(x/2)^2+m*Ast*(d-x)^2//in mm^4
Igr=b*D^3/12//in mm^4
yt=D/2//in mm
Mr=fcr*Igr/yt//in N-mm
M=W*l^2/8*10^6//in N-mm
Ieff=Ir/(1.2-Mr/M*z/d*(1-x/d)*b/b)//in mm^4
//Ir>Ieff
Ieff=Ir//in mm^4
W1=W*l//in kN
u1=5/384*(W1*10^3)*(l*10^3)^3/Ec/Ieff//short-term deflection, in mm
//long-term deflection
//(i) deflection due to shrinkage
k3=0.125//for simply supported beam
pt=1.34//in %
pc=0//in %
k4=0.65*(pt-pc)/sqrt(pt)
phi=k4*0.0003/D
u2=k3*phi*(l*10^3)^2//in mm
//(ii) deflection due to creep
Ecc=Ec/(1+1.6)//in MPa
//assuming a permanent load of 60%
W2=0.6*W*l//in kN
u3=5/384*(W2*10^3)*(l*10^3)^3/Ecc/Ieff//in mm
u4=5/384*(W2*10^3)*(l*10^3)^3/Ec/Ieff//in mm
u5=u3-u4//in mm
u=u1+u2+u5//total deflection, in mm
v1=l*10^3/250//permissible deflection, in mm
v2=l*10^3/350//in mm
//assuming half the shrinkage strain occurs within the first 28 days, the deflection occurring after this time
v3=u2/2+u5//< permissible value, hence OK
