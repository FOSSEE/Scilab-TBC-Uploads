clear;
clc;
close;
disp("Example 4.6")
Cpg=1156 //in J/kg.K
Pt4=1.92 //in MPa
gm=1.33 //gamma
htg=1850 //from example 4.5 in kJ/kg
htc=904 //from example 4.5 in kJ/kg
Cpc=1.04 //in kJ/kg.K
pl=.02 //total pressure loss ratio
Ttmixout=1154.7 //from example 4.5 in K.
//Calculations:
Ttg=htg/(Cpg/1000) //hotgas total temp in K.
Tt4=Ttg //same as nozzle entrance temp.
Ttc=htc/Cpc //coolant total temp.
Ptmixout=(1-pl)*Pt4 //mixed-out total temp.
//using gibbs equation
de=((gm/(gm-1))*log((Ttmixout/Tt4)))-log(Ptmixout/Pt4)
disp(de,"Entropy change across the turbine nozzle blade row:")
disp("The negative sign of entropy change is due to cooling.")
disp("*Ans in book is incorrect as Ptmixout is calculated wrong!")