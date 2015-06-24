//find..
clc
//solution
//given
Tb=1400*1000//N-mm
d=350//mm
r=175//mm
q=(1.75)/2//rad
u=0.4
pb=0.3//N/mm^2
//ref fig 25.11
ub=(4*u*sin(q))/(2*q+sin(2*q))//eqivalent coffint of friction
//let S be spring force
//taking moment abt fulcrum O1
//Rn1=Ft1/u
//S*450=Rn1*200 + Ft1*(175-40)
//put Rn1=Ft1/ub...
//S*450=579.4*Ft1
//Ft1=S*450/579.4
//taking moment abt O2
//S*450+Ft2(175-40)=Rn2*200
//Rn2=Ft2/ub
//S*450+Ft2(175-40)=444.4Ft2
//Ft2=S*450/309.4
//Tb=(Ft1+Ft2)*r=390.25*S
S=Tb/390.25//N
printf("spring force is,%f N\n",S)
//let b be width of brakes shoes
//Ab=b*(2*r*sin(q))//mm
Ft1=S*450/579.4
Rn1=Ft1/ub
Ft2=S*450/309.4
Rn2=Ft2/ub
//pb=Rn2/Ab
b=Rn2/(pb*2*r*sin(q))
printf("width of brake is,%f mm\n",b)