
clc
//solution
//given
b=350//mm
t=20//mm
ft=90//N/mm^2
T=60//N/mm^2
fc=150//N/mm^2
printf("the value of d is,%f mm\n",6*sqrt(t))
//d=26.8//mm
//standard value is d=29mm using table 9.7
d=29//mm
Pt=(b-d)*t*ft//N
Ps=1.75*(pi/4)*d^2*T//N
Pc=d*t*fc//N
n=Pt/Ps
t1=0.75*t//mm
Pt1=(b-d)*t*ft//N
Pt2=(b-2*d)*t*ft+Ps//N
Pt3=(b-3*d)*t*ft+(3*Ps)//N
Pt4=(b-3*d)*t*ft+(6*Ps)//N
Ps9=9*Ps//N//for 9 rivets
Pc9=9*Pc//N//for 9 rivets
P=b*t*ft//N
printf("the value of forces is,%f N\n,%f N\n,%f N\n,%f N\n,%f N\n,%f N\n",Pt1,Pt2,Pt3,Pt4,Ps9,Pc9)
//eff=least(Pt1.Pt2,Pt3,Pt4,Ps9,Pc9)/P
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