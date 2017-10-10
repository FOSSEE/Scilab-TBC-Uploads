// Example 4.4
// Matrix Node Analysis with source Conversion
// From figure 4.11(a), The floating 48V source with series resistance has been converted into a current source with parallel resistance
// From figure 4.11(b),
G_11=1/4+1/2+1; // Sum of conductance at node 1
G_12=1; // Equivalent conductance between node 1 & 2
G_21=G_12; // Symmetry Property of Conductance matrix
G_22=1/3+1+1/6; // Sum of conductance at node 2
G=[G_11,-G_12;-G_21,G_22]; // Conductance Matrix
i_s11=-24/4; // Equivalent source current at node 1
i_s21=15/3+(-24)/6+48/6;// Equivalent source current at node 2
i_s=[i_s11;i_s21]; // Current Matrix
// Using Matrix Node Equation
// G*v=i
v=G\i_s;
v_1=v(1,1);
v_2=v(2,1);
i_a=(15-v_2)/(3*10^3);// Current through 3-kOhm resistor
i_b=-v_1/(2*10^3); // Current through 2-kOhm resistor
disp(v_1,v_2)
disp(i_a,"Current through 3-kOhm resistor(in Amps)=")
disp(i_b,"Current through 2-kOhm resistor(in Amps)=")
