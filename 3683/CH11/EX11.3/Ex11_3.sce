B=0.5//column diameter, in m
fck=20//in MPa
sigma_cbc=7//in MPa
sigma_st=230//in MPa
P1=1600//load on column, in kN
P2=0.05*P1//weight of footing, in kN
P=P1+P2//in kN
q=300//bearing capacity of soil, in kN/sq m
A=P/q//in sq m
L=sqrt(A)//assuming footing to be square
L=2.4//assume, in m
p=P1/L^2//soil pressure, in kN/sq m
p=278//assume, in kN/sq m
bc=1
ks=0.5+bc//>1
ks=1
Tc=0.16*sqrt(fck)*10^3//in kN/sq m
Tv=Tc
//let d be the depth of footing in metres
//case I: refer Fig. 11.11 of textbook
d1=L*(L-B)/2*p/(Tc*L+L*p)//in m
//case II: refer Fig. 11.12 of textbook; we get a quadratic equation of the form e d^2 + f d + g = 0
e=%pi/4*p+%pi*Tc
f=2*%pi/4*B*p+%pi*B*Tc
g=-(L^2-%pi/4*B^2)*p
d2=(-f+sqrt(f^2-4*e*g))/2/e//in m
d2=0.57//assume, in m
d=max(d1,d2)//in m
//bending moment consideration, refer Fig. 11.13 of textbook
M=1*((L-B)/2)^2/2*p//in kN-m
d3=sqrt(M*10^6/0.88/10^3)//<570 mm, hence OK
z=0.9*d*10^3//lever arm, in mm
Ast1=(M*10^6/sigma_st/z)//in sq mm
Ast=L*Ast1//steel required for full width of 2.4 m
//provide 20 mm dia bars
dia=20//in mm
n=Ast/0.785/dia^2//no. of 20 mm dia bars
n=9//assume
Tbd=1.12//in MPa
Ld=dia*sigma_st/4/Tbd//in mm
Ld=1030//assume, in mm
c=50//side cover, in mm
La=(L-B)/2*10^3-c//in mm
//bend bar at right angle and provide length, l
l=Ld-La//in mm
D=d*10^3+dia/2+100//in mm
mprintf("Summary of design:\nOverall depth of footing=%d mm\nCover:100 mm bottom; 50 mm side\nSteel:%d-20 mm dia bars both ways",D,n)
//answer in textbook is incorrect
