// Example 2.2
// Parallel Resistance Calculations
// From Figure 2.6(a)
i_x=2; // Current through unknown resistance R_x
G_par= 1/12+ 1/24+1/8 ; // Equivalent conductance for three resistors of value 12ohms,                       // 24ohms & 8ohms.
R_par=1/G_par; // Equivalent Resistance of those three resistors.
// Using Ohm's Law and KCL
v= R_par*(10-i_x);
R_x= v/i_x;// Ohm's law
disp(v,"Voltage across unknown Resistor(in Volts)=")
disp(R_x,"Resistance across unknown Resistor(in Ohms)=")
