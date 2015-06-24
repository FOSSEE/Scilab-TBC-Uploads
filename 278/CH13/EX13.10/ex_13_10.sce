// find dia of bolts ,thickness of flanges and key dimensions
clc
//solution
//given
d=35//mm
n=6
D1=125//mm
T=800*10^3//N-mm
N=350//rpm
ts=63//N/mm^2
tb=56//N/mm^2
tc=10//N/mm^2
tk=46//N/mm^2
//let d1 be nominal dia
//T=(%pi/4)*d1^2*tb*n*D1/2
//d1=(T/16495)^(0.5)//mm
printf("the dia of bolt is,%f mm\n",(T/16495)^(0.5))
printf("the dia of bolt is say d1=8mm\n")
d1=8//mm
D=2*d
//let tf be flange thickness
//T=((%pi*D^2)/2)*tc*tf
//tf=T/[((%pi*D^2)/2)*tc]
printf("the flange thickness is,%f mm\n",T/[((%pi*D^2)/2)*tc])
printf("the flange thicknes is say tf=12mm\n")
tf=12//mm
//from table 13.1,we find that shaft of dia 70mm diametr
w=12//width of diametre
t1=8//mm//thickness of key
l=1.5*d//mm
L=1.5*d//mm
//let tk1 be induced stress
//T=l*w*tk1*d/2
tk1=T/11025//N/mm^2
printf("the induces stress is,%f N/mm^2\n",tk1)
printf("since induced stress is gerater then safe limits of 46 N/mm^2,therfore,we use limiting case by putting tk1=tk=46\n")
//l1=T/(12*46*17.5)//mm
printf("the length of key is,%f mm\n",T/(12*46*17.5))
printf("the length of key is say 85mm\n")
//L1=l1
L1=85//mm
printf("the legth of hub is,%f mm\n",L1)
P=2*%pi*N*T/60//W
printf("the power rtransmitted is,%f W\n",P)


