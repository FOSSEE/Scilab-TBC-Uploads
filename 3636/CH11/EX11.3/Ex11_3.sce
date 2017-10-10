clear;
clc;
beta1=20 //bjt gain
beta2=20 //bjt gain

//Calculation
beta0=beta1+beta2+(beta1*beta2)

mprintf("net common-emitter current gain= %g",beta0)
