//desing longitudinal joint
clc
//soltuion
//given
D=1250//mm
P=2.5//N/mm^2
ftu=420//N/mm^2
fcu=650//N/mm^2
Tu=300//N/mm^2
eff=0.8
Fs=5//factor of safety
pi=3.14
ft=ftu/Fs
fc=fcu/Fs
T=Tu/Fs
t=P*D/(2*ft*eff)//mm//thickness of plate
d=6*sqrt(t)//mm//DIA
//Pt=(p-d)*t*ft=(p-31.5)*2100//N//tearing resistance of plate
Ps=4*1.875*(pi/4)*d^2*T+(pi/4)*d^2*T//=8.5*(pi/4)*d^2*T//N//shearing resistance of rivet//N//shearing resistance of rivet
//Pt=Ps
//p-31.5=(397500/2100)
//p=31.5+(397500/2100)//mm
//pmax=C*t+41.28//mm=196mm
//since p>pmax,therefore
//p=pmax
p=196//mm
p'=196/2//mm
d1=0.2*p+1.15*d//mm//diatnce between outtr and row and next row
d2=0.165*p+0.67*d//mm//distance ebtween inner row for zigzag riveting
t1=0.75*t//mm//thickness of wide strap
t2=0.625*t//mm//thickness of narrow strap
m=1.5*d//mm//margin
Pt=(p-d)*t*ft//(p-31.5)*2100//N
Pc=5*d*t*fc//N//crushing resistance of rivet
P=p*t*ft//N//strength of the unriveted
//joint may also fail due to combine teARING AND shearing reistance
Pts=(p-2*d)*t*ft+(pi/4)*d^2*T//N
printf("the value of forces calculted are,%f N\n,%f N\n,%f N\n",Pt,Pc,Pts)
//eff=(least of Pt,Pc,Pts)/P
eff=Pts/P//least is Ps
printf("the eff is,%f\n",eff)
printf("the pitch is,%f mm\n",p)
printf("the thickness of wide strap is,%f mm\n",t1)
printf("the thickness of narrow strap is,%f mm\n",t2)
printf("the diameter of rivets is,%f mm",d)
printf("the margine s,%f mm\n",m)
printf("the distance btw outer and next row is,%f mm\n",d1)
printf("the distance btw inner rows is,%f mm\n",d2)