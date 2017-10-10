// Example 2.3
// Available Ohmic Heating Power in Electric Grill unit
// From figure 2.7 we know,
R_1=12; // Resistive element 1
R_2=24; // Resistive element 2
v_s=120; // Voltage source
// Switch allows one of the four resistance values given below,
R_par= (R_1*R_2)/(R_1+R_2); // Parallel Combination
// Individual Values of Resiators and their series combination given below
R_ser=R_1+R_2;
P_min=v_s^2/(R_ser); // Minimum power dissipation
P_max=v_s^2/(R_par);// Maximum power dissipation
// Intermediate Values of Power consumption
P_1=v_s^2/R_1; // Power dissipated in R_1
P_2=v_s^2/R_2; // Power dissipated in R_2
disp(P_min,"Minimum power dissipated in Grill(in Watt)=")
disp(P_max,"Maximum power dissipated in Grill(in Watt)=")
disp(P_1,"&",P_2,"Intermediate values of power dissipation(in Watt)=")
