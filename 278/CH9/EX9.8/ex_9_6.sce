
clc
//solution
//given
t=10//mm
ft=80//N/mm^2
T=60//N/mm^2
pi=3.14
//d=6*sqrt(t)//mm
//choose standard value of d from table 9.3
d=19//mm
//let p is pitch of rivets
Ps=1*1.875*(pi/4)*d^2*T//N//shearing resistance of rivet
//Pt=(p-d)*t*ft=(p-19)*800//N//tearing resistance of plate
//Ps=Pt
p=19+(31900/800)//mm
//pmax=C*t+41.28=58.78mm whihc is equal to p
t1=0.625*t//mm
Pt=(p-d)*t*ft//=(p-19)*800//N
P=p*t*ft//N//strength of the unriveted
printf("the value of forces is,%f N\n,%f N\n",Pt,Ps)
//eff=(least of Pt,Ps)/P
eff=Ps/P//least is Ps
printf("the eff is,%f\n",eff)
printf("the pitch is,%f mm\n",p)
printf("the thickness of cover plate is,%f mm\n",t1)
printf("the diameter of rivets is,%f mm",d)