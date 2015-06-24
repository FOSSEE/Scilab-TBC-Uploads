clc
//Initialization of variables
disp("From steam tables,")
T1=355.21 //F
T2=500 //F
hg=1193.4 //Btu/lbm
h=1274.8 //Btu/lbm
//calculations
Qrev=h-hg
//results
printf("Heat transferred = %.1f Btu/lbm",Qrev)
