
clc
//initialisation of variables
r=0.5
sl=1600
a=10000//ft^2
//CALUCLATIONS
k1=2*sqrt(1+1)-2
A=k1+1
wp=k1+2*sqrt(2)
m=A/wp
k=r/sl
d=(a/(60*A*90*k))^0.2
b=k1*d
//RESULTS
printf (' d= %.2f ft' ,d)
printf ('\n b= %.2f ft',b)
