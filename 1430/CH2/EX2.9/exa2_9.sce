// Example 2.9 
// Analysis of  Ladder Network Using Proportionality Principle
// From figure 2.20
i_1=1; // Assumption
v_1=12*i_1;
// Working backward toward the source using Ohm's and Kirchhoff's Laws,
v_2=v_1/4; // Virtual Voltage across 6 ohm resistor
i_2=v_2/6; // Virtual Current through 6 ohm resistor
i=i_1+i_2; // Virtual Current through Independent Voltage source
v_3=4*i;// Virtual Voltage across 3 Ohm resistor
v_s= v_3+v_2;// Virtual Value of Independent Voltage source
v_s_cap=72;// Actual Value of Independent Voltage source
K=v_s_cap/v_s;
// Actual Values of Variables are
i_cap=K*i;
v_2_cap=K*v_2;
i_1_cap=K*i_1;
R_eq= v_s_cap/i_cap; //Equivalent resistance of teh Ladder Network
disp(i_cap,"Current through Independent Voltage Source(in Amps)=")
disp(v_2_cap,"Voltage across 6 Ohm Resistor(in Volts)=")
disp(i_1_cap,"Current through 12 Ohm Resistor(in Amps)=")
disp(R_eq,"Equivalent Resistance of the Network(in Ohms)=")

