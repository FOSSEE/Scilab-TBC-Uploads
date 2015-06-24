//find efficiency of joint
clc
//solution
//given
t=10//mm
d=25//mm
p=100//mm
ft=120//N/mm^2
T=100//N/mm^2
fc=150//N/mm^2
pi=3.14
Pt=(p-d)*t*ft//N//tearing resistance of plate
Ps=(2*pi/4)*d^2*T//N//shearing resistance of rivet
Pc=2*d*t*fc//N//crushing resistance of rivet
P=p*t*ft//N//strength of the unriveted
//eff=(least of Pt,Ps,Pc)/P
eff=Pc/P//least is Pc
printf("the eff is,%f",eff)