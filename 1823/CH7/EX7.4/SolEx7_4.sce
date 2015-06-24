
//Example 7.4 page no 209
clear
clc
R1=200*10^3
R2=800*10^3
Zin=(R1*R2/(R1+R2))/1000
printf("\n The value of Zin=%0.3f Kohm",Zin)
Rg=160*10^3
r1=5*10^3
vgs=Rg/(Rg+r1)
printf("\n The value of vgs=%0.3f vi",vgs)
Av=-1.88
Rl=2*10^3
Ai=(Av*(Rg+r1))/Rl
printf("\n The value of ai=%0.3f vi",Ai)
