//Example 3.10
// Analog Multimeter Design
V_fs=120*10^-3; // d'Arsonval Parameter
I_fs=200*10^-6; // d'Arsonval Parameter
// Movement's Resistance
R_m=V_fs/I_fs;
R_v=((5000-120)*(600))/120;// Multiplier Resistance
R_a=600/((30000/200)-1); // Shunt Resistance
disp(R_v,"Design Value for Multiplier resistor(in Ohms)=")
disp(R_a,"Design Value for Shunt resistor(in Ohms)=")
