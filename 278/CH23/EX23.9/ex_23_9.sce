//find
clc
//solution
//given
vd=60//mm//valve dia
pb=1.2//N/mm^2
dx2=10//mm
C=5
dx1=35//mm
t=500//N/mm^2
G=80000//N/mm^2
W1=(%pi/4)*vd^2//N
dxmax=dx1+dx2
W=W1*dxmax/dx1//N
K=(4*C-1)/(4*C-4)+(0.615/C)
printf("dia of sprig wire is,%f vmm\n",sqrt((K*8*W*C)/(t*%pi)))
printf("dia is say 12.7 mm,taking standard conditions rfom table 23.2\n")
d=12.7
D=C*d
printf("mean dia is,%f mm\n",D)
printf("numbr of tunrs are,%f \n",dxmax*G*d/(8*W*C^3))
printf("numbr of turns are say 11\n")
n=11
nb=n+2
fL=nb*d + dxmax + 0.15*dxmax
printf("free length is ,%f mm\n",fL)
printf("pitch of coil is,%f mm",fL/(nb-1))