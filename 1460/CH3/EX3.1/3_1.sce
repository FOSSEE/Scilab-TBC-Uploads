clc
//initialization of variables
P=80 //lb/in^2
x=0.9 //quality
hg=1183.1 //B/lbm
hfg=901.1 //B/lbm
//calculations
h=hg-(1-x)*hfg
//results
printf("Enthalpy of steam = %.1f B/lbm",h)
