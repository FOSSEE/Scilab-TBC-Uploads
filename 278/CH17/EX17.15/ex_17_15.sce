//find...
clc
//soltuion
//given
W=80000//N
H1=400//mm
fet=200//N/mm^2
fec=200//N/mm^2
te=120//N/mm^2
fetn=100//N/mm^2
fecn=90//N/mm^2
te=80//N/mm^2
pb=18//N/mm^2
//let dc be core dia
Fs=2
//W=(%pi/4)*dc^2*fec/Fs=78.55*dc^2
//dc=sqrt(W/78.55)
printf("the core dia is,%f mm\n",sqrt(W/78.55))
printf("the core dia is,say 38mm selcted from table 17.2\n")
dc=38//mm
do=46//mm
p=8//m
printf("the nomnal dia and pitch is,%f mm\n,%f mm\n",do,p)
d=(do+dc)/2//mm
//tan(a)=p/(%pi*d)=0.0606
b=0.0606
u=0.14//=tan(q)
T1=W*[(b+u)/(1-(b*u))]*d/2//N-mm//torque acting
fc=W/(%pi*dc^2/4)//N/mm^@
t=(16*T1)/(%pi*dc^2)//N/mm^2
fcmax=0.5*[fc+sqrt(fc^2 +4*t^2)]//N/mm^2
printf("the max pric stress is,%f N/mm^2\n",fcmax)
tmax=0.5*sqrt(fc^2 +4*t^2)//N/mm^2
printf("the max shear stress is,%f N/mm^2\n",tmax)
//let n be numbr of therads
//n=W/(12*%pi/4*(do^2-dc^2))
printf("the numbr of threads is,%f \n",W/(12*%pi/4*(do^2-dc^2)))
printf("the numbr of threads is n=10\n")
n=10
h=p*n//mm
printf("the heigth of nut is,%f mm\n",h)
//let D1 be outer dia of nut
//W=(%pi/4)*[D1^2-do^2]*fetn/2=39.3*(D1^2-2116)
D1=sqrt(W/39.3 +2116)//mm
printf("the outer dia of nut is,%f mm\n",D1)
//let D2 be outer dia of nut collar
//W=(%pi/4)*[D2^2-D1^2]*fetn/2=35.3*(D2^2-4225)
D2=sqrt(W/35.3 + 4225)//mm
printf("the oter dia of collar nut is,%f mm\n",D2)
t1=W/(%pi*D1*40)//mm
printf("the thickness of nut is,%f mm\n",t1)
D3=1.75*do//mm
h3=50//mm
t3=10//mm
d3=160//mm
printf("the heigth ,thickness ,and dia of top of cup is,%f mm\n,%f mm\n,%f mm\n",h3,t3,d3)
u1=u//assume
//M=force applied * length of lever
M=300*2250//N-mm
//let D4 be dia of handle
fb=200/2
D4=(M/(%pi/32*fb))^(1/3)//mm
printf("the dia of ahndle is,%f mm\n",D4)
H4=2*D4//mm
printf("the heigth of head is,%f mm\n",H4)
//design of body
D5=1.5*D2//mm
t5=0.25*do//mm
D6=2.25*D2//mm
D7=1.75*D6//mm
t2=2*t1//mm
To=W*b*d/2//N-mm
printf("the dia of body at top is,%fmm\n",D5)
printf("the thickness of boody is,%f mm\n",t5)
printf("the inner dia is,%f mm\n",D6)
printf("the outr dia is,%f mm\n",D7)
printf("the thickness of base is,%f mm\n",t2)
