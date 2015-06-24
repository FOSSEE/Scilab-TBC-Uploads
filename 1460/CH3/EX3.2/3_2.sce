clc
//initialization of variables
P=100 //lb/in^2
T=470  //F
T2=500 //F
T1=450 //F
//calculations
disp("From table 4 of appendix,")
v1=5.268
v2=5.589
v=v1+2*(v2-v1)/5
//results
printf("Specific volume at %d F = %.3f ft^3/lbm",T,v)
