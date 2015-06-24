//find..
clc
//solution
//given
Tb=3*10^6//N-mm
d=1//m
r=500//mm
u=0.3
q=0.61//rad
ub=(4*u*sin(q))/(2*q+sin(2*q))//eqivalent coffint of friction
//ref fig 25.12
//let S be spring force
//taking moment abt fulcrum O1
//S*1250=Rn1*600 + Ft1*(500-250)
//put Rn1=Ft1/ub...
//S*1250=2125*Ft1
//Ft1=S*1250/2125
//taking moment abt O2
//S*1250+Ft2(500-250)=Rn2*600
//Rn2=Ft2/ub
//S*1250+Ft2(500-250)=1625Ft2
//Ft2=S*1250/1625
//Tb=(Ft1+Ft2)*r=680*S
S=Tb/680
printf("spring force is,%f N\n",S)
//let b be width of brakes shoes
//Ab=b*(2*r*sin(q))//mm
Ft1=S*1250/2125
Rn1=Ft1/ub
Ft2=S*1250/1625
Rn2=Ft2/ub
//pb=Rn2/Ab
b=Rn2/(pb*2*r*sin(q))
printf("width of brake is,%f mm\n",b)
//dimension of coil
//let D be mean dia and d be spring wire dia
C=6
t=500//N/mm^2
n=8
G=80000//N/mm^2
K=(4*C-1)/(4*C-4)+(0.615/C)
Ws=1.3*S
d=((K*8*Ws*C)/(t*%pi))^(0.5)//mm
D=6*d//mm
printf("meand and spring wire dia is,%f mm\n,%f mm\n",D,d)
dx=8*Ws*C^3*n/(G*d)//mm
nb=n+2
fL=nb*d + dx+0.15*dx
printf("free length of spring is,%f mm\n",fL)