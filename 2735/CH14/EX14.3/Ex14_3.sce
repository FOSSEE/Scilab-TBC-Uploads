clc
clear
//Initialization of variables
t1=80 //F
t2=60 //F
p=14.696 //psia
ps=0.507 //psia
pss=0.256 //psia
cp=0.24
disp("From steam tables,")
//calculations
ws=0.622*pss/(p-pss)
w=(cp*(t2-t1) + ws*1060)/(1060+ 0.45*(t1-t2))
pw=w*p/(0.622+w)
phi=pw/ps
td=46 //F
//results
printf("\n humidity ratio = %.4f lbm/lbm dry air",w)
printf("\n relative humidity  = %.1f percent",phi*100)
printf("\n Dew point = %d F",td)

