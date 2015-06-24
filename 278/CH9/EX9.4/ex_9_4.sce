//find efficiency
clc
//solution
//given
t=13//mm
ft=80//N/mm^2
T=60//N/mm^2
fc=120//N/mm^2
pi=3.14
d=6*sqrt(t)//mm//dia of rivet
//use standard value from table 9.3
//let p be the picth of rivets
//Pt=(p-d)*t*ft=(p-23)*1040//N//tearing resistance of plate
Ps=2*(pi/4)*d^2*T//N//shearing resistance of rivet
//p-23=Ps/1040
p=23+(Ps/1040)//mm
//check the limits,if p<=pmax..then it is safe design
//pmax=C*t+41.28//mm=75.28mm which is more then p
pb=0.33*p+ 0.67*d//distance btw rivets
m=1.58*d//margin
Pt=(p-d)*t*ft//N//tearing resistance of plate
Ps=(2*pi/4)*d^2*T//N//shearing resistance of rivet
Pc=2*d*t*fc//N//crushing resistance of rivet
P=p*t*ft//N//strength of the unriveted
//eff=(least of Pt,Ps,Pc)/P
printf("the value of forces are,%f N\n,%f N\n,%f N\n",Pt,Ps,Pc)
eff=Ps/P//least is Ps
printf("the eff is,%f",eff)