clc
clear
//Initialization of variables
pa=1000 //atm
ta=100 //F
//calculations
hf=67.97 //Btu/lbm
w=3 //Btu/lbm
ha=hf+w
disp("from steam table 2,")
hc=1191.8 //Btu/lbm
qrev=hc-ha
//results
printf("Heat transferred = %.1f Btu/lbm",qrev)
