clc
//initialisation of variables
p=1*10^5//n/m^2
v2=2.6//litre
v1=2.2//litre
dq=250//j
//CALCULATIONS
dv=(v2-v1)*10^-3
dw=p*dv
du=dq-dw
//results
printf(' \n change in internal energy= % 1f J',du)
