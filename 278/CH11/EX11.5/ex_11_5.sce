//find dia meter of threaded part 
clc
//solution
//given
D=100//mm
p=1.6//N/mm^2
ft=50//N/mm^2
pi=3.14
A=(pi/4)*D^2
F=A*p//N
printf("the value of force is,%f N\n",F)
//since leverage is 8,therfor
W=F/8//N
P=F-W
//let dc be core dia'
//P=(pi/4)*dc^2*ft
dc=sqrt(P*4/(pi*ft))//mm
printf("the value of core dai is,%f mm\n",dc)
printf("the standard value of core diametr  is 18.376 mm fron T11.1")

