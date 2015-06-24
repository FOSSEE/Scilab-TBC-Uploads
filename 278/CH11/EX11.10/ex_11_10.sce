//find size mild steel
clc
//solution
//given
p=0.84//N/mm^2
ft=56//N/mm^2
//ref fig 11.29
//since pince is 350 mm,therfor area ia A
A=350*350//mm^2
P=A*p//N
printf("the value of force acting is,%f N\n",P)
//let dc be core diameter 
pi=3.14
//P=(pi/4)*dc^2*ft//N
dc=sqrt((P*4)/(pi*ft))
printf("the value of dc is,%f mm\n",dc)
printf("the standard value of core diametr  is 49.177 mm fron T11.1")