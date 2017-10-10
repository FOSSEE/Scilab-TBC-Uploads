// Example 4.7
// Matrix Mesh Analysis with Three Unknown
// From Figure 4.23
R_11= 10+8+3; // Sum of Resistance around mesh 1
R_12=3; // Equivalent Resistance shared by mesh 1 & 2
R_13=0; // Equivalent resistance shared by mesh 1 & 3
R_21=R_12; // Symmetry Property of Resistance Matrix
R_22=3+6;// Sum of resistance around mesh 2
R_23=6; // Equivalent Resistance shared by mesh 2 & 3
R_31=R_13;// Symmetry Property of Resistance Matrix
R_32=R_23;// symmetry Property of Resistance Matrix
R_33=6+1;// Sum of resistance around mesh 3
R=[R_11,-R_12,-R_13;-R_21,R_22,-R_23;-R_31,-R_32,R_33]; // Resistance Matrix
v_s_11= 20+10*4;// Net Equivalent Source Voltage Driving current i_1 in Mesh 1
v_s_21=12;// Net Equivalent Source Voltage Driving current i_2 in Mesh 2
v_s_31=-20;// Net Equivalent Source Voltage Driving current i_3 in Mesh 3
v_s=[v_s_11;v_s_21;v_s_31];// Voltage Vector
// Using Matrix Node Equation, R*i=v
i=R\v_s; // Current Vector
i_1=i(1,1);
i_2=i(2,1);
i_3=i(3,1);
disp(i_1*10^-3,"Current in Mesh 1(in Amps)=")
disp(i_2*10^-3,"Current in Mesh 2(in Amps)=")
disp(i_3*10^-3,"Current in Mesh 3(in Amps)=")
