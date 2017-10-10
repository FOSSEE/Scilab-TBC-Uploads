// Example 4.6
// Matrix Mesh Analysis with Two Unknowns
// From Figure 4.22(a)
R_11=6+15; // Sum of Resistance around the mesh 1
R_12=15;// Equivalent Resistance shared by mesh 1 & 2
R_21=R_12; // Symmetry Property of Resistance Matrix
R_22=15+5+(60*12)/(60+12); // Sum of Resistance around the mesh 2
R=[R_11,-R_12;-R_21,R_22]; // Resistance Matrix
v_s_11=30; // Net Equivalent source Voltage that drives i_1 in mesh 1.
v_s_21=-50-(60*12)/(60+12); // Net Equivalent source Voltage that drives i_2 in mesh 2
v_s=[v_s_11;v_s_21]; // Voltage Vector
// Form Matrix Mesh Equation R*i=v
i=R\v_s; // Current Vector
i_1=i(1,1);
i_2=i(2,1);
p_50=50*(-i_2);// Power supplied by 50V source
p_30=30*i_1;// Power supplied by 30V source
v_a=(60*12*(1+i_2))/(60+12); // Voltage across 1A current source
disp(i_1,"Current in Mesh 1(in Amps)=")
disp(i_2,"Current in mesh 2(in Amps)=")
disp(p_50,"Power supplied by 50V source(in Watt)=")
disp(p_30,"Power supplied by 30V source(in Watt)=")
disp(v_a,"Voltage across Current source(in Volts=")

