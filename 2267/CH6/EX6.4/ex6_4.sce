//Part A Chapter 6 Example 4
clc;
clear;
close;
T1=150+273;//K
T2=25+273;//K
m=1;//kg
cp=0.393;//kJ/kgK

deltaS_block=-m*cp*log(T1/T2);//kJ/kgK
HeatLost_block=-m*cp*(T1-T2);//kJ
deltaS_water=-HeatLost_block/T2;//kJ/K
deltaS_universe=deltaS_block+deltaS_water;//kJ/K
deltaS_universe=deltaS_universe*1000;//J/K
disp("Change in entropy of universe = "+string(deltaS_universe)+" J/K");
//unit of answer is wrong in the book.
