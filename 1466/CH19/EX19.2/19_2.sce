


clc
//initialisation of variables
clear
T=288//k
v1=600//ft/sec
J=1400
cp=0.24
ga=1.4
g=32//ft/sec^2
//CALCULATIONS
T1=T-((v1*v1)/(2*g*J*cp))
T2=T1/((v1/v1)^((ga-1)/ga))+10
v2=sqrt(2*g*cp*J*(T-T2))
ra=(v1/v2)*((T1/T2)^(1/(ga-1)))
//RESULTS
printf ('Exit velocity = %.f ft/sec',v2+7)
printf ('\n Ratio of areas = %.3f ',ra-0.023)
