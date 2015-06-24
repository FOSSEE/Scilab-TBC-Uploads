//ques7
//Heating a House by a Carnot Heat Pump
clear
clc
Tl=-5+273;//temp of sink K
Th=21+273;//temperature of reservior in K
COPh=1/(1-Tl/Th);//coefficient of performance of heat engine
Qh=37.5;//heat of reservoir in kW
W=Qh/COPh;//work output of heat engine in kW
printf('The required power input is = %.2f kW',W);

