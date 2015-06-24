
clc
//initialisation of variables
w= 300 //r.p.m
ri= 2 //ft
ro= 3.5 //ft
g= 32.2 //ft/sec^2
//CALCULATIONS
v1= 2*%pi*ri*(w/60)
v2= v1*ro/2
CH= (v2^2/(2*g))-(v1^2/(2*g))
//RESULTS
printf (' centrifugalhead impressed on the water = %.1f ft of water ',CH)
