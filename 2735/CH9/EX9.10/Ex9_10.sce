clc
clear
//Initialization of variables
pb=14.696 //psia
pa=150 //psia
tb=300 //F
//calculations
disp("From steam tables,")
hb=1192.8 //Btu/lbm
ha=hb
hf=330.51 //Btu/lbm
hfg=863.6 //Btu/lbm
x=(ha-hf)/hfg
//results
printf("Quality of wet steam = %.1f percent",x*100)
