
clc
//solution
//given
t=6//mm
d=20//mm
ft=120//N/mm^2
T=90//N/mm^2
fc=180//N/mm^2
p=50//mm
pi=3.14
Pt=(p-d)*t*ft//N//tearing resistance of plate
Ps=(pi/4)*d^2*T//N//shearing resistance of rivet
Pc=d*t*fc//N//crushing resistance of rivet
P=p*t*ft//N//strength of the unriveted
//eff=(least of Pt,Ps,Pc)/P
eff=Pt/P//least is Pt
p1=65//mm
Pt1=(p1-d)*t*ft//N
Ps1=(2*pi/4)*d^2*T//N
Pc1=2*d*t*fc//N
P2=p1*t*ft//N
printf("the value of forces are,%f N\n,%f N\n,%f N\n",Pt1,Ps1,Pc1)
//eff1=least of Pt1,Ps1,Pc1/P2
eff1=Pt1/P2//least is Pt1
printf("the efficiency is first case is,%f\n",eff)
printf("the eff is second case is,%f",eff1)