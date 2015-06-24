clc
//Initialization of variables
m=0.5 //lbm
//calculations
disp("From tables")
h1=48.02 //B/lbm
hf=180.07 //B/lbm
hfg=970.3 //B/lbm
h2=hf+m*hfg
Q=h2-h1
//results
printf("Heat added = %.1f B",Q)
