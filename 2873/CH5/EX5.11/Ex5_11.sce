// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 5 Example 11")
m=2;//mass of air in kg
v1=1;//initial volume of air in m^3
v2=10;//final volume of air in m^3
R=287;//gas constant in J/kg K
disp("during free expansion temperature remains same and it is an irreversible process.for getting change in entropy let us approximate this expansion process as a reversible isothermal expansion")
disp("a> change in entropy of air(deltaS_air)in J/K")
disp("deltaS_air=m*R*log(v2/v1)")
deltaS_air=m*R*log(v2/v1)
disp("b> during free expansion on heat is gained or lost to surrounding so,")
disp("deltaS_surrounding=0")
disp("entropy change of surroundings=0")
deltaS_surrounding=0;//entropy change of surroundings
disp("c> entropy change of universe(deltaS_universe)in J/K")
disp("deltaS_universe=deltaS_air+deltaS_surrounding")
deltaS_universe=deltaS_air+deltaS_surrounding
