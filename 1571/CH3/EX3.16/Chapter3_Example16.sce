clc
clear

//INPUT DATA 
//continous flow calorimeter
r=120/60;//rate of flow of water in gm/sec
T1=27.30;//temperature at initial in deg.C
T2=33.75;//temperature at final in deg.C
v=12.64;//potential drop in volts
s=1;//specific heat of water in kj/kg-K
i=4.35;//current through the heating element in amp

//CALCULATIONS
J=(v*i)/(r*s*(T2-T1));//the mechanical equivalent of heat in joule/calorie

//OUTPUT
mprintf('the mechanical equivalent of heat is %3.2f j/cal',J)
