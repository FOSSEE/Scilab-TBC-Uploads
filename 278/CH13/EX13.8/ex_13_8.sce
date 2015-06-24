//desing flange
clc
//soltuion
//given
P=90*10^3//W
N=250//rpm
ts=40//N/mm^2
q=0.0175
tb=30//N/mm^2
//let d be dia
T=(P*60*1000)/(2*%pi*N)//N-mm
//T/J=ts/(d/2)
//T/(%pi*d^4/32)=ts/(d/2)//considering strength iof shaft
d1=(35*10^6/80)^(1/3)//mm
//considering rigidity
//T/J=(C*q/l)
//T/(%pi*d^4/32)=84000*0.0175/(20*d)
d2=(35*10^6/73.5)^(1/3)//mm
printf("the value of d1 and d2 is,%f mm\n,%f mm\n",d1,d2)
printf("taking larger value into consideration i,e d2,we take d=d2=80mm\n")
d=80//mm
D=2*d//mm
printf("the outer dia of muff is,%f mm\n",D)
L=1.5*d//mm
printf("the length of muff is,%f mm\n",L)
//from table 13.1,we find that shaft of dia 70mm diametr
w=25//width of diametre
t1=14//mm//thickness of key
l=120//mm
//let tc be inducesd stress
//Tmax=(%pi/16)*tc*[(D^4-d^4)/D]
tc=T/{(%pi/16)*[(D^4-d^4)/D]}
printf("the induce stres is,%f N/mm^2\n",tc)
printf("the induced shear stress is less then 14,hence it is safe design\n ")
tf=0.5*d//mm
printf("the thicknes of flange is,%f mm\n",tf)
//let d1 be nominal dia of bolts
n=4
D1=3*d//mm
//Tqmax=(%pi/4)*d1^2*tb*n*D1/2
d1=sqrt(T/11311)//mm
D2=4*d//mm
tp=0.25*d
printf("the nominal dia of bolts is,%f mm\n",d1)
printf("the outer dia of flange is,%f mm\n",D2)
printf("the thickness of protective circumferencial flange is,%fmm",tp)


