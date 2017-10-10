// Example 4.16
// Transformation of a Resistive Bridge
// From figure 4.49(b)
R_a=3;// Resistances of Wye Network
R_b=12;
R_c=4;
R_2=(R_a*R_b)+(R_c*R_b)+(R_a*R_c);
// Equivalent Delta Resistances are,
R_ab=R_2/R_c; 
R_bc=R_2/R_a;
R_ca=R_2/R_b;
// From Figure 4.49(c)
R_par_1=(R_bc*8)/(R_bc+8);// Combining R_bc & 8
R_par_2=(R_ca*2)/(R_ca+2);// Combining R_ca & 2
R_eq=(24*(R_par_1+R_par_2))/(24+R_par_2+R_par_1);// Equivalent Resistance
disp(R_eq,"Equivalent Resistance of the network(in Ohms)=")
