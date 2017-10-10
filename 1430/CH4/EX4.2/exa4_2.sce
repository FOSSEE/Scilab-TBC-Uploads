// Example 4.2
// Matrix Node Analysis with two Unknowns
// From figure 4.6
G_11= 1/6+1/15+1/12+1/60; // Sum of conductance connected to node 1
G_22=1/5+1/12+1/60;// Sum of conductance connected to node 2
G_12=1/12+1/60;
G_21=G_12;  //Equivalent conductance connecting node 1 & 2
// Conductance matrix is given by
G=[G_11,-G_12;-G_21,G_22];
i_s11=30/6+1;// Net Equivalent source current into node 1
i_s21=50/5-1;// Net Equivalent source current into node 2
i_s=[i_s11;i_s21]; // Current Vector
// Using Matrix node Equation G*v=i
v=G\i_s;
v_1=v(1,1);
v_2=v(2,1);
v_12=v_1-v_2; // Voltage across current source
i_a=(30-v_1)/6;// Current through 30 source
i_b=(50-v_2)/5; // Current through 50V source
p_50= 50*i_b;// Power supplied by 50V source
p_30=30*i_a;// Power supplied by 30V source
p_1=v_12*1;// Power supplied by 1A current source
disp(p_50,"Power supplied by 50V source(in Watt)=")
disp(p_30,"Power supplied by 30V source(in Watt)=")
disp(p_1,"Power supplied by 1A source(in Watt)=")
