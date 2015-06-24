// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 6, Example 17")
disp("Using the given data, the velocity triangles for the inlet and outlet are shown in Fig Ex617")
C2 = 225;//m/s
V2 = 375;//m/s
C1 = 400;//m/s
V1 = 200;//m/s
disp("Work done per unit mass flow: in J/kg")
U = 250;
Wt = U*(C1*cos(25*%pi/180)+C2*cos(70.2*%pi/180))
disp("Degree of reaction DOR")
DOR = (V2^2 - V1^2)/(2*Wt) *100
disp("Power output: in kW")
m = 5.2;
P = m*Wt/1000
disp("Isentropic static enthalpy drop in the stator: in kJ/kg")
etas = 0.93;
Deltahs = (C1^2 - 0.89*C2^2)/etas /1000
disp("Isentropic static enthalpy drops in the rotor: in kJ/kg")
etaf = 0.94;
Deltahr = Wt/(etas*etaf) /1000
disp("Since the state of the steam at the stage entry is given as 10 bar, 300 degree Celsicus,")
disp("Enthalpy at nozzle exit: in kJ/kg")
Hn = 3051.5 - Deltahs
disp("Enthalpy at rotor exit: in kJ/kg")
Hr = 3051.5 - Deltahr
disp("The rotor inlet and outlet conditions can be found by using the Mollier Chart.")
disp("Rotor inlet conditions: P1 = 7 bar, T1 = 235 Degree Celsius")
disp("Rotor outlet conditions: P2 = 5 bar, T2 = 2208 Degree Celsius")
