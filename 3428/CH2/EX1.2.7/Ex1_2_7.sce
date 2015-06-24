//Section-1,Example-1,Page no.-AC.173
//To calculate the gross and net calorific value of a coal sample having the given composition.
clc;
C=80
H=7
O=3
N=2.1
S=3.5
Ash=4.4
GCV=(1/100)*((8080*C)+(34500*(H-(O/8)))+(2240*S))
disp(GCV,'Gross calorific value(kCal/kg)')
NCV=GCV-(0.09*H*587)
disp(NCV,'Net calorific value(kCal/kg)')
