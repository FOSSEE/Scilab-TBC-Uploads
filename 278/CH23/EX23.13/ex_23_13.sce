//find
clc
//solution
//given
d=10//mm
D=120//mm
n=10
W=200//N
G=80*1000//N/mm^2
t=8*W*D/(%pi*d^3)*[1+(d/2*D)]//N/mm^2
dx=8*W*D^3*n/(G*d^4)//mm
printf("stress and eflection is,%f N/mm^2\n,%f N/mm^2\n",t,dx)
sf=W/dx
printf("stiffness is,%f N/mm\n",sf)
U=0.5*W*dx
printf("enerrgy stored is,%f N-mm\n",U)