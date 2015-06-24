clc
//Initialization of variables
dr=1000
mur=100
lr=1/10
dpm=60
//calculations
Vr=mur/dr/lr
dpr=dr*Vr^2
dpp=dpm/dpr
//results
printf("Pressure drop in prototype = %d N/m^2",dpp*10^3)
