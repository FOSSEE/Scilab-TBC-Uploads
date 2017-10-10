// determine flow rate,theoretical head required power,pressure across the impeller
clc
b1=44
r1=21e-3 // mm
B=11e-3 // mm
r2=66e-3 //mm
b2=5e-3//mm
N=2500  //rpm
h1=0
g=9.8
alpha=90 // degree
D1=2
D2=2
u1=(2*%pi*N*r1)/60
gamm1=9800
p1=1000
mprintf('\n peripherial velocity at inlet u1=wR1 =%f m/s',u1)
u2=(2*%pi*N*r2)/60
mprintf('\n peripherial velocity at exit  u2= wR2=%f m/s',u2)
V1=tand(b1)*u1
mprintf('\n V1f = %f m/s',V1)
Q=%pi*2*r1*B*V1
mprintf('\n Q = %f m3/s',Q)
V2f=Q/(2*%pi*r2*b2)
mprintf('\n V2f =%f m/s',V2f)
V2w=V2f/(tand(30))
mprintf('\n u2-V2w = %f ',V2w)
v2w=u2-V2w
mprintf('\n V2w = %f m/s',v2w)
alpha2=atand(V2f/v2w)
mprintf('\n  alpha2 = %f degree',alpha2)
v2=v2w/cosd(18.9)
mprintf('\n  V2= %f m/s',v2)
H1=(u2*v2w)/g
mprintf('\n H1 = %f m',H1) 
p=gamm1*Q*H1
mprintf('\n H1 = %f watt',p)
P2=(p1*g*H1)-((p1/2)*(v2^2-V1^2))
mprintf('\n p2-p1 = %e Pa',P2)
mprintf('\n p2-p1 = %f bar',P2/10^5)
