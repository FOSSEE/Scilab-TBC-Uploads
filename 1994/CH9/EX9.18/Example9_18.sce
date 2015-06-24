//Chapter-9,Example9_18,pg 9_67
V=250
Po=59680
Rsh=250
Ra=0.04
n=80//efficiency
N1=1200
Il=Po*100/(V*n)//Pi=V*Il
Ish=V/Rsh
Ia=Il-Ish
Eb=V-Ia*Ra
Pm=Eb*Ia//gross mechanical power
SL=Pm-Po//stray losses
printf("gross mechanical power\n")
printf("Pm=%.3f W\n",Pm)
printf("stray losses\n")
printf("SL=%.2f W\n",SL)
//on no load
//Pg=S, Ebo*Iao=SL..........(1)
//Ebo=V-Iao*Ra............(2)
//putting (2) in (1)
//(Iao^2)-6250*Iao+278303.24=0
b=-6250
a=1
c=278303.24
Iao=(-b-sqrt((b^2)-4*a*c))/(2*a)
I=Iao-Ish//current drawn on no load
Ebo=V-Iao*Ra
No=N1*Ebo/Eb
printf("no load speed\n")
printf("No=%.3f r.p.m",No)
