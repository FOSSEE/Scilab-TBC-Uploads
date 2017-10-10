clc
clear
//INPUT DATA
p=50;//Power output in kW
m=0.05;//mass flow rate in kg/s
//C8H18 +2*12.5 O2 +2*12.5*3.76 N2= 8 CO2 +9 H2O +12.5 O2 +99N2 ;//Rate of heat transfer from the engine in kJ/kmol
//Qcv+x1=x2+Wcv ;//rate of heat transfer
x1=-249952;//inlet heat transfer in kJ/kmol
x2=-2415445.5;//exit heat transfer in kJ/kmol

//CALCULATIONS
Wcv=(p/m)*114.28;//work done in J/kmol of fuel
Qcv=x2+Wcv-x1;//Heat transfer rate from the engine in kJ/kmol

//OUTPUT
printf('(i)Heat transfer rate from the engine is %3.1f kJ/kmol',Qcv)





