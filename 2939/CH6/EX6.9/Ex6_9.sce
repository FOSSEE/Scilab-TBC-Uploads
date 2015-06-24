
// Ex6_9
clc;
// Given:
nSr=38;
nY=39;


// Solution:

PSr=0.565*exp(-((nSr-40)^2)); //independent fractional chain yield of Sr
PY=0.565*exp(((nY-40)^2)); //independent fractional chain yield of Y

printf("The independent fractional chain yield of Sr is = %f",PSr)
printf("\n The independent fractional chain yield of Y is = %f",PY)
