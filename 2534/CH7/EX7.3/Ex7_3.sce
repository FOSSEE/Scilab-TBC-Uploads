//Ex7_3
clc
TA = 28
TJ = 50
TR = 10
PD = (TJ - TA)/TR
disp("TA = "+string(TA)+"degreeC")//ambient temperature at which transistor is operated
disp("TJ = "+string(TJ)+"degreeC")//junction temperature
disp("TR = "+string(TR)+"degreeC/W")//termal resistance
disp("PD = (TJ - TA)/TR = "+string(PD)+"W")//dissipated power
