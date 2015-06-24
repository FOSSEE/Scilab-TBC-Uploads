clc
//Initialization of variables
P=20 //psia
T=227.96+ 459.69 //R
//calculations
disp("from saturation tables,")
sfg=1.3962 //B/ R lbm
Q=T*sfg
//results
printf("heat transfer = %.1f B/lbm",Q)
