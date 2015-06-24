//determine diametr of diameter and thickness of plate
clc
//solution
//given'
n=4
Ab=60//mm
Cd=60//mm
Bc=60//mm
P=100000//N
Ef=150//mm
q=30//deg
Ty=240//N/mm^2
Fs=1.5
Fb=125//N/mm^2
b=240//mm
//let d be diameter of rivet
Ps=P/n//N
e=Ef*sin(q)//mm
la=60+30//mm
ld=90//mm
//la=ld
//lb=lc
lb=30//mm
lc=30//mm
//eqauting the moments equal to each other 
//P*e=(Fa/la)*[la^2+lb^2+lc^2+ld^2]
//10000*75=(Fa/la)*[2*90^2+2*30^2]
Fa=7500*1000*la/(2*90^2+2*30^2)//N
Fb=Fa*lb/la//N
Fc=Fa*lc/la//N
Fd=Fa*ld/la//N
a=-sqrt(3)/2//deg
b=-sqrt(3)/2//deg
c=sqrt(3)/2
d=sqrt(3)/2
Ra=sqrt(Ps^2+ Fa^2+ 2*Fa*Ps*a)
Rb=sqrt(Ps^2+ Fb^2+ 2*Fb*Ps*b)
Rc=sqrt(Ps^2+ Fc^2+ 2*Fc*Ps*c)
Rd=sqrt(Ps^2+ Fd^2+ 2*Fd*Ps*d)
printf("the value of Ps is,%f N\n ",Ps)
printf("the value fo forces  rae,%f N\n,%f n\n,%f n\n,%f N\n",Fa,Fb,Fc,Fd)
printf("the value of Ra,Rb,Rc and Rd are,%f N\n,%f N\n,%f N\n,%f N\n",Ra,Rb,Rc,Rd)
//since greatest is Rd,therfore Rd=P
pi=3.14
//P=(pi/4)*d^2*Ty/Fs//N
d1=sqrt(Rd/125.7)
printf("the diametr of rivet is %f mm\n",d1)
printf("choosing th standard value od d as 23.5 mm\n")
