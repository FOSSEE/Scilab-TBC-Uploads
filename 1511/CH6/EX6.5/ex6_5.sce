// Example 6.5 page no-352
clear
clc

hic = 1100 
hrc = 1
hfc = -51,
hoc = 25*10^-6
Rl=10000
Rs=Rl
Ai=-hfc/(1+(hoc*Rl))
Ri=(hic+hrc*Ai*Rl)/1000
Av=Ai*Rl/Ri
Avs=Av*Ri/(Ri+Rs)
R0=1/(hoc-(hfc*hrc/(hic+Rs)))
printf("Ai=%.1f\nRi=%.1f kOhm\nAv=%.3f\nAvs=%.3f\nR0=%.0f om",Ai,Ri,Av,Avs,ceil(R0))
