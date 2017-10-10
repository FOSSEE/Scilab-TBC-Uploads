
clc
//soltuion
//given
P=15000//W
N=200//rpm
ts=40//N/mm^2
tb=30//N/mm^2
//fck=2*tk
tc=14//N/mm^2
Tmean=(P*60*1000)/(2*%pi*N)//N-mm
Tmax=1.25*Tmean//N/mm^2
//Tmax=(%pi/16)*t*d^3=7.86*d^3
//d=(Tq/7.86)^(1/3)//mm
printf("the dia of shaft is,%f mm\n ",(Tmax/7.86)^(1/3))
printf("the dia of shaft is ,say 50 mm\n")
d=50//mm
D=2*d//mm
printf("the outer dia of muff is,%f mm\n",D)
L=1.5*d//mm
printf("the length of muff is,%f mm\n",L)
//from table 13.1,we find that shaft of dia 75mm diametr
w=16//width of diametre
t1=16//mm//thickness of key
l=75//mm
//let tc be induced shear stress
//Tmax=(%pi/16)*tc*[(D^4-d^4)/D] =184100*fc
fc=Tmax/184100//N/mm^2
printf("the induced stress acting is,%f N/mm^2\n",fc)
//let tk be induced stress on key
//Tmax=l*w*l*d*tk*0.5=30000*tk
tk=Tmax/30000//N/mm^2
printf("the induced stress in key is,%f mm\n",tk)
tf=0.5*d//mm
printf("the thicknes of flange is,%f mm\n",tf)
//let d1 be nominal dia of bolts
n=4
D1=3*d//mm
//Tqmax=(%pi/4)*d1^2*tb*n*D1/2
d1=sqrt(Tmax/7070)//mm
D2=4*d//mm
tp=0.25*d
printf("the nominal dia of bolts is,%f mm\n",d1)
printf("the outer dia of flange is,%f mm\n",D2)
printf("the thickness of protective circumferencial flange is,%fmm",tp)
