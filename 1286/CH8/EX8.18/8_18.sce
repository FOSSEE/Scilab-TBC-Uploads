clc
//initialisation of variables
p=1.5//kg/cm2
T=373//k
v=1600//cc
L=2240000//J/kg
//CALCULATIONS
dp=((p*1000*980)-(1.01*10^6))/10
dv=(v-1)/1000
dT=dp*T*dv/L
T1=dT+T-273
//results
printf(' \n new temperature of cooker= % 1f c',T1)
