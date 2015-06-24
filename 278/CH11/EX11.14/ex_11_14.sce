//find the size of the bolts
clc
//solution
//given
//ref fig 11.35
W=12000//N
L=400//mm
L1=50//mm
L2=375//mm
ft=84//N/mm^2
n=4
Ws=W/n//shear load on each bolt
Wt=0.5*[[W*L*L2]/[L1^2 +L2^2]]//N
Wte=0.5*[Wt + sqrt(Wt^2 +4*(Ws)^2)]//N//equivalent tensile load
//let dc be core dia
pi=3.14
//A=(pi/4)*dc^2*ft=66*dc^2
dc=sqrt(Wte/66)//mm
//let tabd b be thickness and depth of arm
//Z=(1/6)*t*b^2
M=W*L//N-mm
Z=M/84//
//asume b=250
b=250//mm
//Z=b^2*t/6
t=(M*6)/(ft*b^2)
printf("the value of core diameteris, %f mm\n",dc)
printf("the standard value of core diametr  is 11.546 mm fron T11.1\n")
printf("the value of equivalent tensile load is,%f N\n",Wte)
printf("the value tensile load is,%f N\n",Wt)
printf("the value of load actiung on each bolt is,%f N\n",Ws)
printf("the moment acting is,%f N-mm\n",M)
printf("the value of thickness is,%f mm",t)