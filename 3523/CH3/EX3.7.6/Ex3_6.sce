// Example 6// Ch 3
clc;
clear;
close;
// given data
z1=-1;//ion at a distance equal to mean free path, -x=mfp
z2=-5;//ion at a distance equal to five times the mean free path, -x=5mfp
//n0 is the density of ions at the origin
n1 = exp(z1);//density of ions at distance equal to the mean free path
n2 = exp(z2);//density of ions at distance equal to five times the mean free path
printf("density of ions at distance equal to the mean free path %fn0",n1)
printf("density of ions at distance equal to five times the mean free path %fn0",n2)
