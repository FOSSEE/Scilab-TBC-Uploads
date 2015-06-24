//Example 3.4
clc;
clear;
close;
format('v',7);
//Given data :
Hwater=6;//m(Pressure head of water)
S_oil=0.70;//(specific gravity of oil)
H_oil=Hwater/S_oil;//in m(Pressure head in terms of oil)
disp(H_oil,"Pressure head of water in terms of oil in meter : ");
S_oil=0.825;//(specific gravity of oil)
S_mercury=13.6;//(specific gravity of mercury)
Hmercury=70/100;//m(Pressure head of mercury)
H_oil=S_mercury/S_oil*Hmercury;//in m(Pressure head in terms of oil)
disp(H_oil,"Pressure head of mercury in terms of oil in meter : ");
