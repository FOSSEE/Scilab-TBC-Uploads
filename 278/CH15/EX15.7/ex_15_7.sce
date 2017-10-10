
clc
//solution
//given
//refer fig 15.17
x=190//mm
y=140//mm
m=2.7//kg
r2=170//mm=0.17//m
N2=300//rpm
h=12//mm
ft=80//N/nn^2
pb=8//N/mm^2
w2=(2*%pi*N2)/60//rad/s
w1=w2+(0.6/100)*w2//rad/s
r1=r2+(h*x/y)//mm
Fc1=m*w1^2*r1/1000
Fc2=m*w2^2*r2/1000
//s1 is spring force at max speed w1
//s2 is spring force at max speed w2
//ref 15.18
S1=2*Fc1*x/y//2*m*w1^2*r1*x/y
printf("the fore on speed w1 is,%f N\n",S1)
S2=2*Fc2*x/y//N
printf("the force acting at speed w2 is,%f N\n",S2)
//S1-S2=h*s1
s1=(S1-S2)/h//N/mm
printf("the stiffness is ,%f N/mm\n",s1)
//design bell crank lever
//max load at A is
W=S1/2//N
//taking mont abt F
P=W*y/x//N
Rf=sqrt(W^2 + P^2)//N
//let d1 and l1 be dia and length of fulcrum pin
//l=1.25*d
//Rf=d*l*pb=10*d^2
//d=sqrt(Rf/10)//mm
printf("the dia is,%f mm\n",sqrt(Rf/10))
printf("the dia is say d=10mm\n")
d1=10//mm
l=1.25*d1
printf("the inner dia of bolts is,%f mm\n",d1+6)
printf("the outer dia of bolts is,%f mm\n",2*d1)
//design for lever
M=682*(140-40)//N-mm
//let t2 and B be thickness and depth
//B=3t
//Z=(1/6)*t*B^2=1.5t2^3
//ft=M/Z
//t2=(M/(1.5*ft))^(1/3)//mm
printf("the thickness of lever is,%f mm\n",(M/(1.5*ft))^(1/3))
printf("the thickness of lever is ,say 10 mm\n")
t2=10//mm
B=3*t2//mm
printf("the depth of levr is,%f mm\n",B)
//design for ball
//let r be th rad of ball
rho=7200//kg/m^3
//m=vol*rho
//2.7=(4/3)*%pi*r^3*rho
r=(2.7/30163)^(1/3)*1000//mm
printf("the rad of a ball is,%f mm\n",r)
M1=P*r//N-mm
//let dc be core dia
//Z=(%pi/32)*dc^3=0.0982*dc^3
//dc=(M1/(80*0.0982))^(1/3)
printf("the core dia is,%f mm\n",(M1/(80*0.0982))^(1/3))
printf("the nominal dia corresponding to dc is 16 mm\n")
//design of roller end A
//let d3 be dia and l3 be length of pin at A
W=S1/2//N
//l3=1.25*d3
//W=d3*l3*pb=10*d3^2
//d3=(W/10)^0.5//MM
printf("the dia is,%f mm\n",(W/10)^0.5)
printf("the dia is ,say 10 mm\n")
d3=10//mm
l3=1.25*d3//mm
printf("the length of pin is,%f mm\n",l3)