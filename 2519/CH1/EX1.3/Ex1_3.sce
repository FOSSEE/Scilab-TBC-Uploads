clc
clear
//Initialization of variables
gc=32.1739 //lbm ft/lbf s^2
F=5.00e-9 //lbf hr/ft^2
//calculations
F2=F*3600*gc
//results
printf("Force required = %.2e lbm/ft sec",F2)
