clc
//Initialization of variables
disp("From steam tables,")
hb=1192.8 //Btu/lbm
ha=hb
hf=330.51 //Btu/lbm
hfg=863.6 //Btu/lbm
//calculations
x=(ha-hf)/hfg
//results
printf("Quality of wet steam = %.1f percent",x*100)
