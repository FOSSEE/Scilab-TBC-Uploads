//find
clc
//solution
//given
m=1800//kg
v=1.2//m/s
dx=200//m
t=365//N/mm^2
C=6
G=80*1000//N/mm2
E=0.5*m*v^2*10^3//N-mm
//let W be equivalent load 
//Es=0.5*W*dx*2=200*W
W=E/200//N
//let b be suide of square and D be mean Dia\
//D=6b
K=(4*C-1)/(4*C-4)+(0.615/C)
//t=K*2.4*W*D/b^3=116870/b^2
//b=sqrt(116870/t)//mm
printf("sqrt(116870/t),%f mm\n",sqrt(116870/t))
printf("side of square is,say 18 mm\n")
b=18//mm
printf("dia of coil is,%f mm\n",6*b)
//let be numbr of acitve colild
n=dx*G*b/(5.568*W*C^3)
printf("acitve turns are ,%f \n",n)