//find
clc
//solution
//given
d=6//mm
Do=75//mm
t=350//N/mm^2
G=84*1000//N/mm^2
D=Do-d//mm
C=D/d
//let W be axial load
//neglecting curvature
Ks=1+(1/(2*C))
//t=Ks*[8*W*D/(%pi*d^3)]//N/mm^2
W=(t*%pi*d^3)/(8*Ks*D)
printf("load acting is,%f N\n",W)
dpt=8*W*D^3/(G*d^4)//deflection per turn//mm
printf("defelection per turn is,%f mm",dpt)
//considering curvature
K=(4*C-1)/(4*C-4)+(0.615/C)
W=t*%pi*d^2/(K*8*C)//N
printf("load acting by takin curvature in consideration is,%f N\n",W)
