//Section-1,Example-4,Page no.-AC.174
//To calculate higher and lower calorific values per m^3 at STP.
clc;
W=125
V=0.5
T_1=20
T_2=40
m=0.125
HCV=(W*(T_2-T_1))/V
disp(HCV,'Higher calorific value(kCal/m^3)')
LCV=HCV-((m/V)*580)
disp(LCV,'Lower calorific value(kCal/m^3)')
