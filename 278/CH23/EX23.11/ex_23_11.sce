//find
clc
//solution
//given
P=30000//W
N=3000//rpm
pb=0.085//N/mm^2
v=2300//m/min
//d1=1.3d2
//r1=1.3r2
u=0.3
ns=6
D=25//mm
t=420//N/mm^2
G=84000//N/mm^2
Tmean=P*60/(2*%pi*N)//N-m
Tmax=1.2*Tmean*1000//N-mm
//C=pb*r2
//W=C*2*%pi*(r1-r2)
//Tmax=2*%pi*u*C[r1^2-r2^2]
//Tmax=0.11*r2^3
r2=(Tmax/0.11)^(1/3)//mm
r1=1.3*r2//mm
r=(r1+r2)/2000//m
v1=2*%pi*N*r//m/min
printf("speed obtained is,%f m/min\n",v1)
//since velocity ontaine di sless then v,hence design is safe
//W=C*2*%pi*(r1-r2)
W=pb*r2*2*%pi*(r1-r2)//N
W1=W/6//force on each spring
//let d1 eb dia
T=W1*D/2//N-mm
d1=(16*T/(%pi*t))^(1/3)//mm
C=D/d1
K=(4*C-1)/(4*C-4)+(0.615/C)
printf("dia of sprig wire is,%f vmm\n",((K*8*W1*D)/(t*%pi))^(1/3))
printf("taking standard dia 4.064 from table 23.2,we get d is 4.064\n")
d=4.064//mm
Do=D+d
Di=D-d
printf("mean dia,outer di and inner dia are,%f mm\n,%f mm\n,%f mm\n",D,Do,Di)
dx=8*W1*D^3*8/(G*d^4)//mm
nb=8+2
fL=nb*d + dx +0.15*d
printf("free length is ,%f mm\n",fL)
printf("pitch of coil is,%f mm",fL/(nb-1))