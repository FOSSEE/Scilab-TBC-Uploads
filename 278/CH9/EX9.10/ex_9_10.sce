
clc
//soltuion
//given
P=2.5//N/mm^2
D=1600//mm
ft=75//N/mm^2
T=60//N/mm^2
fc=125//N/mm^2
//design of longitudinal joint
t=(P*D)/(2*ft)+1//mm
d=6*sqrt(t)//m
pi=3.14
//choose standard avlue fromtable 9.3
//let p be pitch
//Pt=(p-d)*t*ft//N//tearing resistance of plate
//Pt=(p-34.5)*2100//N
Ps=4*1.875*(pi/4)*d^2*T+(pi/4)*d^2*T//N//shearing resistance of rivet//N//shearing resistance of rivet
//Ps=Pt
//2100*(p-34.5)=Ps
//p=Ps/(2100)+34.5//mm
//pmax=C*t+41.28=220//mm
//since p&gt;pmax,therefore
p=220//mm
p'=220/2//mm
d1=0.2*p + 1.15*d//mm/diatnce between outtr and row and next row
d2=0.165*p+0.67*d//mm//distance ebtween inner row for zigzag riveting
t1=0.75*t//mm//thickness of wide strap
t2=0.625*t//mm//thickness of narrow strap
m=1.5*d//mm//margin
Pt=(p-d)*t*ft//N
Pc=5*d*t*fc//N//crushing resistance of rivet
P=p*t*ft//N//strength of the unriveted
//joint may also fail due to combine teARING AND shearing reistance
Pts=(p-2*d)*t*ft+(pi/4)*d^2*T//N
//eff=(least of Pt,Ps,Pts)/P
eff=Pts/P//least is Ps
//desing for circumferential joint
//let n be number of rivets
//shearign resistance of revets=total shearing load acting on circumferential joint
//n*pi*d^2*T/4=pi*D^2*P/4
//n=D^2*P/(d^2*T)//89.6 say 90
n=90
n1=90/2//number of rivets per row
//p1=pi(D+t)/n'//
//p1=113.7,say 140mm standard value'
p1=140//mm
effj=(p1-d)/(p1)
d3=0.33*p1+0.67*d//dis btw rows of rivets for zigzag
m1=1.5*d
printf("calcultion for longitudinal joint")
printf("the eff is,%f\n",eff)
printf("the pitch is,%f mm\n",p)
printf("the thickness of wide strap is,%f mm\n",t1)
printf("the thickness of narrow strap is,%f mm\n",t2)
printf("the diameter of rivets is,%f mm",d)
printf("the margine s,%f mm\n",m)
printf("the distance btw outer and next row is,%f mm\n",d1)
printf("the distance btw inner rows is,%f mm\n",d2)
printf("calculation for circumferencial joint\n")
printf("the num of rivets is,%f\n",n)
printf("the number of rivets per rwo for cercumferencial joint is,%f\n",n1)
printf("the distance btw rows of rivets for zigzag riveting is,%f mm\n",d3)
printf("the margin is,%f mm",m1)
