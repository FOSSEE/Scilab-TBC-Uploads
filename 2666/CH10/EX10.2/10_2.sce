clc
//initialisation of variables
v1=273//ft
v2=319//ft
k=2736//ft-lb per lb
w=3112//ft lb
k1=1600^2/(2*32.2)//ft-lb per lb
q=33870//ft lb
//CALCULATIONS
V=sqrt(v1^2+v2^2)//ft per sec
W=q+k+w//ft lb per lb
//RESULTS
printf('The total work kinetic energy=% f ft lb per lb',W)
