//find
clc
//solution
//given
W=1000//N
dx=80//mm
n=30
G=85*1000//N/mm^2
//let D be mean dia of spring coil ,d be dia of spring wire
//C =D/d
d=4//assume//mm
//dx=8*W*D^3*n/(G*d^4)
//dx=8*W*C^3*n/(G*d)
C=[dx*G*d/(8*W*n)]^(1/3)
D=C*d//mm
printf("dia of coil is,%f mm\n",D)
printf("outer dia is ,%f mm\n",D+d)
K=(4*C-1)/(4*C-4)+(0.615/C)
t=K*(8*W*C)/(%pi*d^2)
printf("max shear stress induced is,%f N/mm^2",t)