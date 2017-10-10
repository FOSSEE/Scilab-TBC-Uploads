// Example 4.3
// Matrix Node Analysis with Three Unknown
// From Figure 4.7
G_11= 1/4+1/2+1/10; // Sum of Conductance at node 1
G_12=1/10// Equivalent Conductance connecting node 1 & 2
G_13= 0; // Equivalant Conductance connecting node 1 & 3
G_21=G_12; // Symmetry Property of Conductance Matrix
G_22= 1/10+1/5; // Sum of conductance at node 2
G_23=1/5; // Equivalent Conductance connecting node 2 & 3
G_31=G_13; // Symmetry Property of Conductance Matrix
G_32=G_23; // Symmetry Property of Conductance Matrix
G_33=1/5+1/20; // Sum of Conductance at node 3
G=[G_11,-G_12,-G_13;-G_21,G_22,-G_23;-G_31,-G_32,G_33]; // Conductance Matrix
i_s11= 30/2+3; // Net Equivalent source current into node 1
i_s21= -1; // Net Equivalent source current into node 2
i_s31=-3; // Net Equivalent source current into node 3
i_s=[i_s11;i_s21;i_s31]; // Current Vector
v=G\i_s;
v_1=v(1,1);
v_2=v(2,1);
v_3=v(3,1);
disp(v_1," Voltage at node 1(in Volts)=")
disp(v_2,"Voltage at node 2(in Volts)=")
disp(v_3," Voltage at node 3(in Volts)=")
