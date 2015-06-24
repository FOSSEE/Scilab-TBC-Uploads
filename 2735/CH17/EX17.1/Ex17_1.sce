clc
clear
//Initialization of variables
ha=1033 //Btu/mol air
hbd=2992 //Btu/mol air
hc=7823 //Btu/mol air
hdd=5142 //Btu/mol air
Hv=2733000 //Btu/mol
M=29
//calculations
Wt=hc-hdd
Wc=ha-hbd
Net=Wt+Wc
Heat=hc-hbd
etat=Net*100/Heat
molair=Heat/Hv
mr=molair*142/M
Af=1/mr
//results
printf("\n Thermal efficiency = %.1f percent",etat)
printf("\n Moles of fuel burned per mol of air = %.5f mol fuel/mol air",molair)
printf("\n Mass ratio in pounds = %.5f lbm fuel/lbm air",mr)
printf("\n Air fuel ratio = %d lbm air/lbm fuel",Af)
