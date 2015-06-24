clc
//initialisation of variables
T=373//k
L=537000*4.2//J
dp=0.0212*13600*9.81
dv=1.673//m^3
//CALCULATIONS
dT=dp*T*dv/L
//results
printf(' \n change in temperature of boiling water= % 1f c',dT)
