//to find equilibrium speed 
clc
//given
//all lengths are in inches
W=120//lb
w=15//lb
AB=12
BF=8
BC=12
BE=6.5
g=35230//inches rpm
//at Minimum radius 
AF=(AB^2-BF^2)^(1/2)
CE=(BC^2-BE^2)^(1/2)
k2=(BE*AF)/(CE*BF)
N2=(((W/2)*(1+k2)+w)*g/(w*AF))^(1/2)
//At MAximum radius 
BF1=10
BE1=8.5
AF1=(AB^2-BF1^2)^(1/2)
CE1=(BC^2-BE1^2)^(1/2)
k1=(BE1*AF1)/(CE1*BF1)
N1=(((W/2)*(1+k1)+w)*g/(w*AF1))^(1/2)
printf("\nN1 (corresponding maximum radius) = %.1f rpm\nN2 (corresponding minimum radius) = %.1f rpm",N1,N2)
