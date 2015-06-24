//Example 7.7 page no 211
clear
clc
m=2*10^-3
Rg=30*10^3
Rd=2
Rl=4
Rg=160
r1=5
rds=30
Rs=3
Av=(-m*Rg*Rd*Rl)/((Rg+r1)*((Rd+Rl)*(rds+(m+1)*Rs+Rd*Rl)))*1000
printf("\n The value of Av=%0.3f ",Av)
