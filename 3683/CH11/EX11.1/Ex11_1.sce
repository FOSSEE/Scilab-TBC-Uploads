b=0.2//column width in m
D=0.3//column depth in m
fck=15//in MPa
sigma_cbc=5//in MPa
sigma_st=230//in MPa
P1=600//load on column in kN
P2=0.05*P1//weight of footing, in kN
P=P1+P2//in kN
q=150//bearing capacity of soil in kN/sq m
A=P/q//in sq m
L=sqrt(A)//assuming footing to be square
L=2.1//assume, in m
p=P1/L^2//soil pressure, in kN/sq m
p=136//assume, in sq m
bc=b/D
ks=0.5+bc//>1
ks=1
Tc=0.16*sqrt(fck)*10^3//in kN/sq m
Tv=Tc
//let d be the depth of footing in metres
//case I: consider greater width of shaded portion in Fig. 11.3 of textbook
d1=L*(L-b)/2*p/(Tc*L+L*p)//in m
//case II: refer Fig. 11.4 of textbook; we get a quadratic equation of the form e d^2 + f d + g = 0
e=p+4*Tc
f=b*p+D*p+2*(b+D)*Tc
g=-(L^2-b*D)*p
d2=(-f+sqrt(f^2-4*e*g))/2/e//in m
d2=0.362//assume, in m
//bending moment consideration, refer Fig. 11.5 of textbook
Mx=1*((L-b)/2)^2/2*p//in kN-m
My=1*((L-D)/2)^2/2*p//in kN-m
d3=sqrt(Mx*10^6/0.65/10^3)//<362 mm, hence OK
z=0.9*d2*10^3//lever arm, in mm
Ast1=(Mx*10^6/sigma_st/z)//in sq mm
Ast=L*Ast1//steel required for full width of 2.1 m, in sq mm
//provide 12 mm dia bars
dia=12//in mm
n=Ast/0.785/dia^2//no. of 12 mm dia bars
n=16//assume
Tbd=0.84//in MPa
Ld=dia*sigma_st/4/Tbd//in mm
Ld=825//assume, in mm
c=50//side cover, in mm
La=(L-D)/2*10^3-c//>Ld, hence OK
D=d2*10^3+dia/2+100//in mm
mprintf("Summary of design:\nOverall depth of footing=%d mm\nCover=100 mm bottom; 50 mm side\nSteel-%d bars of 12 mm dia both ways",D,n)
