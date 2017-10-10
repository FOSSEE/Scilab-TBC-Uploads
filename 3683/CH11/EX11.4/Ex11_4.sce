b=0.3//column width in m
c1=0.4//column depth in m
fck=20//in MPa
sigma_cbc=7//in MPa
sigma_st=275//in MPa
P1=1200//load on column, in kN
P2=0.05*P1//weight of footing, in kN
P=P1+P2//in kN
q=200//bearing capacity of soil, in kN/sq m
A=P/q//in sq m
L1=2//in m
L2=A/L1//assuming footing to be square
L2=3.2//assume, in m
p=P1/L1/L2//soil pressure, in kN/sq m
bc=b/c1
ks=0.5+bc//>1
ks=1
Tc=0.16*sqrt(fck)*10^3//in kN/sq m
Tv=Tc
//let d be the depth of footing in metres
//case I, refer Fig. 11.15 of textbook
//short direction
d1=L1*(L2-c1)/2*p/(Tc*L1+L1*p)//in m
//long direction
d2=L2*(L1-b)/2*p/(Tc*L2+L2*p)//in m
//case II: refer Fig. 11.16 of textbook; we get a quadratic equation of the form e d^2 + f d + g = 0
e=p+4*Tc
f=b*p+c1*p+2*(b+c1)*Tc
g=-(L1*L2-b*c1)*p
d3=(-f+sqrt(f^2-4*e*g))/2/e//in m
d3=0.47//assume, in m
d=max(d1,d2,d3)//in m
//bending moment consideration, refer Fig. 11.17 of textbook
Mx=1*((L1-b)/2)^2/2*p//in kN-m
My=1*((L2-c1)/2)^2/2*p//in kN-m
d4=sqrt(My*10^6/0.8/10^3)//in mm
d4=480//>470 mm (provided for shear)
d=d4//in mm
z=0.92*d//lever arm, in mm
//short direction
Ast1=(Mx*10^6/sigma_st/z)//in sq mm
Ast=L2*Ast1//steel required for full width of 3.2 m, in sq mm
b1=L1//central band width, in m
beta=L2/L1
Astc=L1/(beta+1)*Ast//in sq mm
//provide 12 mm dia bars
dia=12//in mm
n1=Astc/0.785/dia^2//no. of 12 mm dia bars
n1=13//assume
Astr=Ast-Astc//steel in remaining width, in sq mm
n2=Astr/0.785/dia^2
n2=4//assume
n2=n2/2//on each side
Tbd=1.12//in MPa
Ld=dia*sigma_st/4/Tbd//in mm
c=50//side cover, in mm
La=(L1-b)/2*10^3-c//>Ld, hence OK
//long direction
Ast1=(My*10^6/sigma_st/z)//in sq mm
Ast=L1*Ast1//steel required for full width of 2 m, in sq mm
//provide 18 mm dia bars
dia=18//in mm
n=Ast/0.785/dia^2//no. of 18 mm dia bars
n=12//assume
Ld=dia*sigma_st/4/Tbd//in mm
c=50//side cover, in mm
La=(L2-c1)/2*10^3-c//>Ld, hence OK
D=d+dia/2+100//in mm
D=590//assume, in mm
mprintf("Summary of design:\nOverall depth of footing=%d mm\nCover=100 mm bottom; 50 mm side\nSteel-long direction\n%d bars of 18 mm dia in %d m width equally spaced\nShort direction\nCentral band %d m:%d-12 mm dia bars equally spaced\nRemaining sides:%d-12 mm dia bars on each side",D,n,L1,L1,n1,n2)
