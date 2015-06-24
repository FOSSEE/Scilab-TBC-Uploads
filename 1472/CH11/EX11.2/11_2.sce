clc
//initialization of varaibles
R=48.3 //ft lb/lb R
k=1.4
//calculations
dc=R/778
cp=k*dc/(k-1)
cv=cp/k
//results
printf("Specific heat at constant volume = %.3f B/lb R",cv)
printf("Specific heat at constant pressure = %.3f B/lb R",cp)
