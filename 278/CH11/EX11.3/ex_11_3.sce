//find nominal diameter of bolt
clc
//solution
//given
//ref fig 11.22
P=60000//N
ft=100//N/mm^2
//let d nominal diameter and dc core dia
//P=ft/A
//A=(pi/4)*dc^2
pi=3.14
dc=sqrt(P*4/(pi*ft))
printf("the value of dc is,%f mm\n",dc)
printf("the nominal value of d is 33 mm fron T11.1")