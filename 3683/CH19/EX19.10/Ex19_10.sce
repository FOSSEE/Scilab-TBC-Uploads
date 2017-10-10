b=0.2//column width, in m
D=0.3//column depth, in m
fck=15//in MPa
fy=415//in MPa
P1=600//load on column, in kN
P2=0.05*P1//weight of footing, in kN
P=P1+P2//in kN
Pu=1.5*P//in kN
q=150//bearing capacity of soil, in kN/sq m
qu=2*q//ultimate bearing capacity of soil, in kN/sq m
A=Pu/qu//in sq m
L=sqrt(A)//assuming footing to be square, in m
L=1.8//round-off, in m
p=P1*1.5/L^2//soil pressure, in kN/sq m
p=277.8//round-off, in kN/sq m
bc=b/D
ks=0.5+bc//>1
ks=1
Tc=0.25*sqrt(fck)*10^3//in kN/sq m
Tv=Tc
//let d be the depth of footing in metres
//case I: consider greater width of shaded portion in Fig. 19.6 of textbook
d1=L*(L-b)/2*p/(Tc*L+L*p)//in m
//case II: refer Fig. 19.7 of textbook; we get a quadratic equation of the form e d^2 + f d + g = 0
e=p+4*Tc
f=b*p+D*p+2*(b+D)*Tc
g=-(L^2-b*D)*p
d2=(-f+sqrt(f^2-4*e*g))/2/e//in m
d2=0.35//round-off, in m
//bending moment consideration, refer Fig. 19.8 of textbook
Mx=1*((L-b)/2)^2/2*p//in kN-m
My=1*((L-D)/2)^2/2*p//in kN-m
d3=sqrt(Mx*10^6/0.138/fck/10^3)//<350 mm, hence OK
//steel
//Xu=0.87*fy*Ast/0.36/fck/b = a*Ast
a=0.87*fy/0.36/fck/10^3
//using Mu=0.87 fy Ast (d-0.416 Xu), we get a quadratic equation
p=0.87*fy*0.416*a
q=-0.87*fy*d2*10^3
r=Mx*10^6
Ast=(-q-sqrt(q^2-4*p*r))/2/p//in sq mm
Ast=L*Ast//steel required for full width of 1.8 m
//provide 12 mm dia bars
dia=12//in mm
n=Ast/0.785/dia^2//no. of 12 mm dia bars
n=12//round-off
Tbd=1.6//in MPa
Ld=dia*0.87*fy/4/Tbd//in mm
Ld=677//assume, in mm
//this length is available from the face of the column in both directions
D=d2*10^3+dia/2+100//in mm
mprintf("Summary of design:\nOverall depth of footing=%d mm\nCover=100 mm\nSteel-%d bars of 12 mm dia both ways",D,n)
