// Example 2.13
// Equivalent Source Networks
//From Figure 2.28(b)
v_oc= (20*50)/(5+20);// Open Circuit Voltage   =======> equation 1
//From Figure 2.28(c)
i_sc=50/5; // Short Circuit Current      ========> equation 2
// From equation 1 & 2
R_t=v_oc/i_sc;// Thevenin Resistance
v=24;// Voltage across R_l_1
// From figure 2.28(d)
// Using Voltage Divider, (R_l_1*40)/(4+R_l_1)=24.
R_l_1=6;
//From figure 2.28(e)
// Using Current Divider , (4*10)/(4+R_l_2)=8.
R_l_2=1;
disp(R_l_1,"Design Value of R_1 when v=24 (in Ohms)=")
disp(R_l_2,"Design Value of R_1 when i=8(in Ohms)=")
