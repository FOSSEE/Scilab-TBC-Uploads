clc
clear
// given:
noMPPTpower=10*8 // power without MPPT in W from fig 6.25
MaxP=25*5 // maximum power by PV module in W from fig 6.25
effi=0.95 // efficiency of MPPT
MPPTcost=4000 // Cost in rupees
// Soln
Pact=MaxP*effi // actual power produced in W
Psurplus=Pact-noMPPTpower // Surplus power in W
t=MPPTcost/(3*Psurplus/1000) // time required in hours 
printf("time required is %.1f hours",t)
