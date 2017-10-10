b=225//width in mm
D=300//depth in mm
fck=15//in MPa
fy=415//in MPa
l=4.2//span, in m
W1=(b/10^3)*(D/10^3)*25//self-weight, in kN/m
W2=6//live load, in kN/m
W=W1+W2//in kN/m
Wu=1.5*W//in kN/m
Mu=Wu*l^2/8//in kN-m
d=270//assume, in mm
Mulim=0.138*fck*b*d^2/10^6//in kN-m
//as Mulim > Mu, it will be a singly reinforced beam
//Xu=0.87*fy*Ast/0.36/fck/b = a*Ast
a=0.87*fy/0.36/fck/b
//using Mu=0.87 fy Ast (d-0.416 Xu), we get a quadratic equation
p=0.87*fy*0.416*a
q=-0.87*fy*d
r=Mu*10^6
Ast=(-q-sqrt(q^2-4*p*r))/2/p//in sq mm
//provide 12 mm dia bars
n=Ast/0.785/12^2
n=3//assume
Ast=n*0.785*12^2//in sq mm
Vu=Wu*l/2//in kN
Tv=Vu*10^3/b/d//in MPa
pt=Ast/b/d*100//pt=0.56
//for M15 and pt=0.56
Tc=0.46//in MPa
//as Tc>Tv, no shear reinforcement required
//provide nominal stirrups and provide 6 mm stirrups
Asv=2*0.785*6^2//in sq mm
Sv=Asv*fy/0.4/b//in mm
Sv=260//assume, in mm
Svmax=0.75*d//in mm
Svmax=200//round-off, in mm
Sv=min(Sv,Svmax)//in mm
mprintf("Summary of design:\nBeam size - %d x %d mm\nCover - 25 mm\nSteel - %d-12 mm dia bars\nStirrups - 6 mm dia @ %d mm c/c",b,D,n,Sv)
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
z=d-x/3//in mm
Ir=b*x^3/12+b*x*(x/2)^2+m*Ast*(d-x)^2//in mm^4
Igr=b*D^3/12//in mm^4
yt=D/2//in mm
Mr=fcr*Igr/yt//in N-mm
M=W*l^2/8*10^6//in N-mm
Ieff=Ir/(1.2-Mr/M*z/d*(1-x/d)*b/b)//in mm^4
//Ir<Ieff<Igr, hence OK
W1=W*l//in kN
u1=5/384*(W1*10^3)*(l*10^3)^3/Ec/Ieff//short-term deflection, in mm
//long-term deflection
//(i) deflection due to shrinkage
k3=0.125//for simply supported beam
pt=0.56//in %
pc=0//in %
k4=0.72*(pt-pc)/sqrt(pt)
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
