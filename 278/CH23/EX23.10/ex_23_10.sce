//find
clc
//solution
//given
m=2.97//kg
x=0.15//m
y=0.1125//m
r2=0.1//m
r1=0.15//m
N2=240//rpm
t=420//N/mm^2
G=84*1000//N/mm^2
C=8
//ref fig 23.16
w2=2*%pi*N2/60//rad/s
w1=w2+(7.5*w2/100)//rad/s
//let Fc1 and Fc2 be centri fugal forces a w1 and w2
//S1=2*Fc1*x/y
S1=2*m*r1*w1^2*x/y//N
S2=2*m*r2*w2^2*x/y//N
dx=(r1-r2)*y/x*1000//mm
K=(4*C-1)/(4*C-4)+(0.615/C)
W=S1//max force
printf("dia of sprig wire is,%f vmm\n",sqrt((K*8*W*C)/(t*%pi)))
printf("dia is say 7.62 mm,taking standard conditions rfom table 23.2\n")
d=7.62
D=C*d
W1=S1-S2
printf("mean dia is,%f mm\n",D)
printf("numbr of tunrs are,%f \n",dx*G*d/(8*W1*C^3))
printf("numbr of turns are say 16\n")
n=16
nb=n+2
dxmax=dx*W/(W1)
fL=nb*d + dxmax + 0.15*dxmax
printf("free length is ,%f mm\n",fL)
printf("pitch of coil is,%f mm",fL/(nb-1))