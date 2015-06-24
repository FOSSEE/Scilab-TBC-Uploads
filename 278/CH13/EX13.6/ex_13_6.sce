//design cast iron
clc
//soltuion
//given
P=15000//W
N=900//rpm
K=1.35//service factor
//ts=tb=tk=40//N/mm^2
ts=40//N/mm^2
tb=40//N/mm^2
tk=40//N/mm^2
//fcb=fck
fck=80//N/mm^2
fcb=80//N/mm^2
tc=8//N/mm^2
//let d be dia
Tq=(P*60*1000)/(2*%pi*N)//N-mm
Tqmax=Tq*1.35//N-mm
//Tq=(%pi/16)*t*d^3=7.86*d^3
//d=(Tq/7.86)^(1/3)//mm
printf("the dia of shaft is,%f mm\n ",(Tqmax/7.86)^(1/3))
printf("the dia of shaft is ,say 35mm\n")
d=35//mm
D=2*d//mm
printf("the outer dia of muff is,%f mm\n",D)
L=1.5*d//mm
printf("the length of muff is,%f mm\n",L)
//from table 13.1,we find that shaft of dia 75mm diametr
w=12//width of diametre
t1=12//mm//thickness of key
//let tc be induced shear stress
//Tqmax=(%pi/16)*tc*[(D^4-d^4)/D] =63147*fc
fc=Tqmax/63147//N/mm^2
printf("the induced stress acting is,%f N/mm^2\n",fc)
tf=0.5*d//mm
printf("the thicknes of flange is,%f mm\n",tf)
//let d1 be nominal dia of bolts
n=3
D=3*d
//Tqmax=(%pi/4)*d1^2*tb*n*D1/2
d1=sqrt(Tqmax/4950)//mm
D2=4*d//mm
tp=0.25*d
printf("the nominal dia of bolts is,%f mm\n",d1)
printf("the outer dia of flange is,%f mm\n",D2)
printf("the thickness of protective circumferencial flange is,%fmm",tp)