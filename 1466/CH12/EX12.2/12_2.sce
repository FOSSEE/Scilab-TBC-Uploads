
clc
//initialisation of variables
v=90//ft/sec
Rm=0.5//lb
r=1/20
//CALCULATIONS
v1=v*sqrt(r)
R=((1/r)^3)*Rm
//RESULTS
printf (' corresponding speed of model= %.2f ft/sec',v1)
printf (' \n resistance= %.f Lb',R)
