// Example 2.15
// Circuit Reduction by Source Conversion
//From Figure 2.34(b)
i_s=18; // Value of Current Source
g_m=0.25; // Transconductance of VCCS
G_eq=1/4+1/6+1/12;
R_eq=1/G_eq; // Equivalent Resistance
// Using KCL at Upper Node
// v_2=2(18-0.25v_2)
v_2=36/1.5;
disp(v_2,"Voltage across 6-Ohm Resistor(in Volts)=")
