//Example 2.14
// Calculating Thevenin Parameters
// From Figure 2.31(b)
v_x_1=0; // Applying KVL in Middle loop
i_x_1=0;// From Ohm's Law
i_sc=3*10^-3; // From KCL 
// For Calculating R_t
// From figure 2.31(c)
// v_x=-0.25v_t
//i_x=-0.125v_t
//i_t=i_x + v_t/40=-0.1v_s
// R_t=v_t/i_t
R_t=-(1*10^3)/0.1; // From equations mentioned above
v_oc=R_t*i_sc; // Relation between thevenin Parameters
disp(i_sc,"Short Circuit Current of Thevenin Network(in Amps)=")
disp(R_t,"Thevenin Resistance(in Ohms)=")
disp(v_oc,"Open Circuit Voltage of Thevenin Network(in Volts)=")

