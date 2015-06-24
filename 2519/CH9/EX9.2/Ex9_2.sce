clc
clear
//Initialization of variables
P=40 //psia
//calculations
disp("from steam tables,")
hf=200.8 //Btu/lbm
hg=27 //Btu/lbm
T=495  //R
ds=(hf-hg)/T
//results
printf("Change in entropy = %.3f Btu/lbm R",ds)
