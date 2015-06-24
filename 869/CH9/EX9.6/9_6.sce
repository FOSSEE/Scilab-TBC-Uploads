clc
//initialisation of variables
Es= 30*10^6 //psi
As= 1 //in^2
Ea= 10*10^6 //psi
Aa= 2 //in^2
Ls= 10 //ft
La= 5 //ft
//CALCULATIONS
A=[(Ls/(Es*As)) (-La/(Ea*Aa));1 1]
b= [0;1]
c= A\b
Fa= c(1,1)
Fb= c(2,1)
d= Fb*Ls
//RESULTS
printf ('distance= %.2f ft',d)
