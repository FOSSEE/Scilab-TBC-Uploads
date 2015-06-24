//find size of bolts
clc
//solution
//given
T=25*10^3//N-mm
n=4
Rp=30//mm
t=30//N/mm^2
Ps=T/Rp//N//shearing load
//let dc be core dia
//P=t*n*A
//A=(pi/4)*dc^2
pi=3.14
//P=t*n*(pi/4)*dc^2=94.26*dc^2
//P=Ps
dc=sqrt(Ps/94.26)//mm
printf("the value of dc is,%f mm\n",dc)
printf("the standard value of core diametr  is 3.141 mm fron T11.1")