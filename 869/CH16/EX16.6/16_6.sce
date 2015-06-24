clc
//initialisation of variables
l= 10 //ft
Ys= 33000 //psi
E= 30*10^6
A= 13.24 //in^4
//CALCULATIONS
r= 2
lbyr= l*12/r
Cc= sqrt(2*%pi^2*E/Ys)
fs= 5/3+3*(lbyr)/(8*Cc)+(lbyr)^3/(5*Cc^3)
Sa=((1-((lbyr)^2/(2*Cc^2)))*(Ys))/fs
Pa= Sa*A
//RESULTS
printf ('Premissible load= %.2e kips',Pa)
