
clc
//soltuion
//given
D=101//mm
mr=2//kg
l=325//mm
sl=.15//m
Nmin=1500//rpm
Nmax=2500//rpm
r1=4//comp ratio
p=2.5//N/mm^2
r=sl/2//radius of crank
n=l/r
Fl=(%pi/4)*D^2*p//N
wmax=(2*%pi*Nmax)/60//rad/s
Fi=mr*(wmax)^2*r*[1+1/n]//N
Fc=Fl//N
//ref fig 16.11
//Ixx/Iyy=3.2
//kxx^2/kyy^2=3.2
Wcr=Fc*6//N
//A=2*(4*t*t)+ t*3*t=11t^2
//Ixx=[4t*5t^3/12-3t*3t^3/12]=419*t^4/12
//kxx=sqrt(Ixx/A)=1.78*t
L=l//mm
fc=320//N/mm^2
a=1/7500
//Wcr=(fc*A)/(1+a*(L/k)^2)
//on solving we egt 
//t^2=44.55
t=sqrt(44.55)//mm
printf("the heigth and width is,%f mm\n,%f mm\n",5*t,4*t)
printf("the thickness oflnage is,%f mm\n",t)
