// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 5 Example 4")
T1=(150+273.15);//temperature of copper block in K
T2=(25+273.15);//temperature of sea water in K
m=1;//mass of copper block in kg
C=0.393;//heat capacity of copper in KJ/kg K
disp("entropy change in universe(deltaS_universe)=deltaS_block+deltaS_water")
disp("where deltaS_block=m*C*log(T2/T1)")
disp("here hot block is put into sea water,so block shall cool down upto sea water at 25 degree celcius as sea may be treated as sink")
disp("therefore deltaS_block=m*C*log(T2/T1)in KJ/K")
deltaS_block=m*C*log(T2/T1)
disp("heat loss by block =heat gained by water(Q)in KJ")
disp("Q=-m*C*(T1-T2)")
Q=-m*C*(T1-T2)
disp("therefore deltaS_water=-Q/T2 in KJ/K")
deltaS_water=-Q/T2
disp("thus deltaS_universe=(deltaS_block+deltaS_water)*1000 in J/K")
deltaS_universe=(deltaS_block+deltaS_water)*1000
