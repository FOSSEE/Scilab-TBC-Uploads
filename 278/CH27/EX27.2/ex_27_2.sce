//find
clc
//solution
//given
N=720//rpm
Lh=24000//hours
W=1//N
L99=60*N*Lh//rev
//x=L99/L90
x=0.85*0.9*[log(1/0.99)/log(1/0.90)]^(1/1.17)
L90=L99/x//rev
C=W*(L90/10^6)^(1/3)
printf("dynamic load rating is,%f kN",C)