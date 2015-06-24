//ques3
//efficiency of the cycle
clc
clear
wnet=395.2;//kJ/kg from example no 1
//Tx=T4
Tx=710.8;//K from example no 1
T3=1373.2;//K from example no 1
Cp=1.004;//specific heat in kJ/kg 
qh=Cp*(T3-Tx);
nth=wnet/qh;
printf('Thermal efficiency = %.1f percent',nth*100); 