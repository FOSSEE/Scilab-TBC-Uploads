// Rxample 4.8
// Matrix Mesh Analysis with Source Conversion
// From figure 4.27(c)
R_11=4+2+8; // Sum of resistance around mesh 1
R_12=2; // Equivalent Meshes shared by mesh 1 & 2
R_21=R_12; // Symmetry Property of Reistance matrix
R_22=6+2+10; // Sum of reistance around mesh 2
R=[R_11,-R_12;-R_21,R_22]; // Resistance Matrix
v_s_11=20+8*7; // Net Equivalent Source Voltage that drives current i_1 in Mesh 1
v_s_21=18+6*7; // Net Equivalent Source Voltage that drives current i_2 in Mesh 2
v=[v_s_11;v_s_21]; // Voltage Vector
// Using Matrix Mesh Equation, R*i=v
i=R\v; // Current Vector
i_1=i(1,1);
i_2=i(2,1);
v_a=8*(7-i_1);// Ohm's Law
i_x=3-i_2; //from KCL
i_b=7+i_x; // from KCL
disp(v_a,"Voltage across 8-Ohm Resistor(in Volts)=")
disp(i_b,"Current through 6-Ohm Resistor(in Amps)=")
