//find
clc
//solution
//given
m=20000//kg
v=2//m/s
D=300//mm
dx=250//mm
t=600//N/mm^2
E=0.5*m*v^2*10^3//N-mm
//let W be equivalent load 
//Es=0.5*W*dx*2=250*W
W=E/250//N
T=W*D/2//N-mm
printf("torque acting is,%f N-mm\n",T)
//d=(T*16/(%pi*t))^(1/3)//mm
printf("dia is,%f mm\n",(T*16/(%pi*t))^(1/3))
printf("dia is say 60mm\n")
d=60//mm
G=84000//N/mm^2
//let be numbr of active tunrs
//n=dx*G*d^4/(D^3*8*W)
printf("numbr of turns are,%f \n",dx*G*d^4/(D^3*8*W))
printf("numbr of turns are,say 8\n")
nb=8+2
fL=nb*d + dx +0.15*dx
printf("free length is ,%f mm\n",fL)
printf("pitch of coil is,%f mm",fL/(nb-1))