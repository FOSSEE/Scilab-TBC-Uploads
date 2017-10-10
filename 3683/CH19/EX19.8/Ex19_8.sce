l=10//span, in m
fck=15//in MPa
fy=250//in MPa
Df=100//slab thickness, in mm 
D=l*10^3/15//depth of beam, in mm
D=600//assume, in mm
d=D-50//cover=50 mm
bw=300//beam width, in mm
bf=l*10^3/6+bw+6*Df//>2500 mm c/c distance of beams
bf=2500//in mm
W1=(bw/10^3)*(D-Df)/10^3*25//web, in kN/m
W2=(Df/10^3)*(bf/10^3)*25//slab, in kN/m
W3=(bf/10^3)*5//imposed load, in kN/m
W=W1+W2+W3//in kN/m
Wu=1.5*W//in kN/m
Mu=Wu*l^2/8//in kN-m
Vu=Wu*l/2//in kN
Asf=0.36*fck*bf*Df/0.87/fy//steel required only for flange, in sq mm
Asf=6210//round-off, in sq mm
//verification of trial section
xu=100//assume, in mm
Ast=Asf//in sq mm
Mulim=0.87*fy*Ast*(d-0.416*xu)/10^6//in kN-m
//Mulim > Mu, hence OK
//keeping the assumed trial section, work out the steel required
//Xu=0.87*fy*Ast/0.36/fck/b = a*Ast
a=0.87*fy/0.36/fck/bf
//using Mu=0.87 fy Ast (d-0.416 Xu), we get a quadratic equation
p=0.87*fy*0.416*a
q=-0.87*fy*d
r=Mu*10^6
Ast=(-q-sqrt(q^2-4*p*r))/2/p//in sq mm
//provide 5-25 mm dia + 3-22 mm dia bars
pt=Ast*100/(bw*d+(bf-bw)*Df)//pt=1%, approximately
//check for shear
Tv=Vu*10^3/bw/d//in MPa
//for M15 grade concrete and pt=1%
Tc=0.6//in MPa
//as Tv > Tc, shear reinforcement required
Vus=Vu-Tc*bw*d/10^3//in kN
//provide 6 mm dia stirrups
Asv=2*0.785*6^2//in sq mm
Sv=Asv*0.87*fy*d/Vus/10^3//in mm
Sv=90//round-off, in mm
mprintf("T beam:bf=%d mm\nDf=%d mm\nd=%d mm\nD=%d mm\nCover = 50 mm\nSteel= 5-25 mm dia + 3-22 mm dia bars\nStirrups = 6 mm dia @ %d mm c/c throughout",bf,Df,d,D,Sv)
//answer in textbook for spacing of stirrups is incorrect
//deflection check
Ec=5700*sqrt(fck)//in MPa
Es=2*10^5//in MPa
m=Es/Ec//modular ratio
fcr=0.7*sqrt(fck)//in MPa
//using bf Df (x-Df/2) = m Ast (d-x), we get a quadratic equation
x=(m*Ast*d+bf*Df^2/2)/(bf*Df+m*Ast)//in mm
z=0.87*d//assume, in mm
//refer Fig. 19.5 of textbook
Ir=bf*x^3/12+bf*Df*(x/2)^2+m*Ast*(d-x)^2//in mm^4
y=(bf*Df*Df/2+(D-Df)*bw*((D-Df)/2+Df))/(bf*Df+(D-Df)*bw)//c.g. from top, in mm (neglecting steel)
Igr=bf*Df^3/12+bf*Df*(Df/2-y)^2+bw*(D-Df)^3/12+bw*(D-Df)*((D-Df)/2+Df-y)^2//in mm^4
yt=d/2//in mm
Mr=fcr*Igr/yt//in N-mm
M=W*l^2/8*10^6//in N-mm
Ieff=Ir/(1.2-Mr/M*z/d*(1-x/d)*bw/bf)//in mm^4
//Ir > Ieff
Ieff=Ir//in mm^4
W1=W*l//in kN
u1=5/384*(W1*10^3)*(l*10^3)^3/Ec/Ieff//short term deflection, in mm
//deflection due to shrinkage
k3=0.125//for simply supported beam
pt=1//in %
pc=0//in %
k4=0.65*(pt-pc)/sqrt(pt)
phi=k4*0.0003/D
u2=k3*phi*(l*10^3)^2//in mm
//deflection due to creep
Ecc=Ec/(1+1.6)//in MPa
//assuming a permanent load of 60%
W2=0.6*W*l//in kN
u3=5/384*(W2*10^3)*(l*10^3)^3/Ecc/Ieff//in mm
u4=5/384*(W2*10^3)*(l*10^3)^3/Ec/Ieff//in mm
u5=u3-u4//in mm
u=u1+u2+u5//total deflection, in mm
v1=l*10^3/250//permissible deflection, in mm
v2=l*10^3/350//>20 mm
v2=20//in mm
//assuming half the shrinkage strain occurs within the first 28 days, the deflection occurring after this time
v3=u2/2+u5//< permissible value, hence OK
