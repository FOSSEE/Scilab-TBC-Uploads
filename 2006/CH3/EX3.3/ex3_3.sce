clc;
V=300; // Volume of air in the room in m^3
p=1; // Atmospheric pressure in bar
T=25; // Temperature of air in Degree Celcius
R=287; // Characteristic constant of Air in J/kg k
m=(p*10^5*V)/(R*(T+273)); // Ideal gas equation
disp ("kg",m,"Mass of air in room");
