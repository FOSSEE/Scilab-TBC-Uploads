//find...
clc
//soltuion
//given
W=100*1000//n
N=60//rpm
u=0.12
fc=100//N/mm^2
//let Ac be core dia
Ac=W/fc//mm^2
//corr to Ac,we get'
do=50//mm
dc=41.5//mm
d=46//mm
p=8//mm
printf("the nominal,core ,mean dia and pitch of screw corresponding to Ac are,%f mm\n,%f mm\n,%f mm\n,%f mm\n",do,dc,d,p)
//tan(a)=p/(%pi*d)=0.055
b=0.055
//u1=u/(cos(B))=u/(cos(15)=0.124
u1=0.124
P=W*[(b+u)/(1-(b*u))]//N
T1=P*d/2//N-mm
T2=0.1*T1//N
T=T1+T2//N-mm
To=W*b*d/2//N
eff=To/T
Power=T*2*%pi*N/60000//W
printf("the effi and power tranmitted is,%f \n,%f W\n",eff,Power)
