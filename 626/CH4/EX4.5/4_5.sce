clear;
clc;
close;
disp("Example 4.5")
mc=0.5 //mass flow rate of coolant in kg/s
mg=50 //mass flow rate of hot gas in kg/s
htg=1850 // total enthalpy of gas in kJ/kg
htc=904 //total enthalpy of coolant in kJ/kg
Cpmixout=1594 //in j/kg.K
//Energy equation between mixed out state and mixed out state and the hot and cold stream solves this problem:
Htmixout=(mc*htc+mg*htg)/(mc+mg)
Ttmixout=Htmixout/(Cpmixout/1000)
disp(Htmixout,"Mixed-out total enthalpy after the nozzle in kJ/kg :")
disp(Ttmixout,"Mixed out temperature in K :")