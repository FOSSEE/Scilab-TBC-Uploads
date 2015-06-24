//find rivet dia,distance btw rows of rivets 
clc
//solution
//given
t=7//mm
pi=3.14
ft=90//N/mm^2
T=60//N/mm^2
fc=120//N/mm^2
//let d be dia,since t<=8mm therefore d will be obtainned by equating shearing resistance to crushing
//Ps=Pc
//Ps=3*(pi/4)*d^2*T//N//shearing resistance of rivet
//Pc=3*d*t*fc//N//crushing resistance of rivet
//Ps=Pc
//141.4*d^2=2520*d
d=2520/141.4//mm
//let p is pitch
Ps=141.4*d^2//N
//Pt=(p-d)*t*ft//N//tearing resistance of plate
//Ps=Pt
//630*(p-19)=51045
//p=(51045/630)+19//mm
//pmax=C*t+41.28//mm=66mm,since pmax<p..therefore p=pmax=66mm
p=66//mm
pb=0.33*p+0.67*d//distance btw the rivets
Pt=(p-d)*t*ft
Ps=141.4*d^2//N
Pc=3*d*t*fc//N
printf("the pitch is,%f mm\n",p)
printf("the distance btw the rivets is,%f mm",pb)