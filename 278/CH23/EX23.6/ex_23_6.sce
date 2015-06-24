//find
clc
//solution
//given
W1=2250//N
W2=2750//N
dx=6
C=5
t=420//N/mm^2
G=84*1000//N/mm^2
//T=W2*D/2=W*5d/2=6875*d
//T=(%pi/16)*t*d^3
d=sqrt(6875/82.48)//mm
printf("mean dia is,%f mm\n",5*d)
printf("outer dia is,%f \n",5*d+d)
printf("inner dia is,%f mm\n",5*d-d)
W=500//N
//n=dx*G*d/(8*W*C^3)
printf("numbr of tunrs are,%f \n",dx*G*d/(8*W*C^3))
printf("numbr of turns are say 10\n")
n=10
nb=n+2
dxmax=(6/500)*2750//mm
fL=nb*d + dxmax + 0.15*dxmax
printf("free length is ,%f mm\n",fL)
printf("pitch of coil is,%f mm",fL/(nb-1))