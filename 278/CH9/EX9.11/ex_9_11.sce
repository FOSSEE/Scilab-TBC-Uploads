//design joint
clc
//solution
//given
b=200//mm
t=12.5//mm
ft=80//N/mm^2
T=65//N/mm^2
fc=160//N/mm^2
pi=3.14
printf("the value of d is,%f mm\n",6*sqrt(t))
//standard value of d=21.5mm
d=21.5//mm
//let n be number of rivets
Pt=(b-d)*t*ft//N
Ps=1.75*(pi/4)*d^2*T//N
Pc=d*t*fc//N
n=Pt/Ps
t1=0.75*t//mm
Pt1=(b-d)*t*ft//N
Pt2=(b-2*d)*t*ft+Ps//N
Pt3=(b-2*d)*t*ft+(3*Ps)//N
Ps5=5*Ps//N//for 5 rivets
Pc5=5*Pc//N//for 5 rivets
P=b*t*ft//N
printf("the value of forces is,%f N\n,%f N\n,%f N\n,%f N\n,%f N\n",Pt1,Pt2,Pt3,Ps5,Pc5)
//eff=least(Pt1.Pt2,Pt3,Ps5,Pc5)/P
eff=Pt1/P//since Pt1 is least
p=3*d +5//mm//pitch
m=1.5*d//mm
d1=2.5*d//mm//dis btw rows of rivets
printf("the diameter is,%f mm\n",d)
printf("the nuber of rivets is,%f\n",n)
printf("the thickness of strap is,%f mm\n",t1)
printf("the eff is,%f\n",eff)
printf("the pitch is,%f mm\n",p)
printf("the marginl pitch is,%f mm\n",m)
printf("the dis btw row is,%f mm",d1)
