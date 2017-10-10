// Example 34_6
clc;funcprot(0);
//Given data
t_25=10;// Operating time at 25 MW load in hours
t_z=14;//Remaining period at zero load in hours
// I=5*10^6*(7+0.2L+0.1L^3) where I is in kJ/hr and L is in MW

//Calculation
//(a)
L_0=0;// Zero load
I_0=((5*10^6)*(7+0.2*L_0+0.1*L_0^2));// The input per hour at zero load in kJ/hr
L_1=25;// Load in MW
I_1=((5*10^6)*(7+0.2*L_1+0.1*L_1^2));// The input per hour at 25 MW load in kJ/hr
T_e=(L_1*t_25)+(L_0*t_z);// Total energy generated with in 24 hours in MW-hrs.
T_p=(I_1*t_25)+(I_0*t_z);//Total energy input to the plant within 24 hours
H_i1=T_p/T_e;//Average rate of heat input in kJ/MW-hr.

//(b)
A_l=T_e/24;// The average load on the plant MW
L=A_l;// Load in MW
I=5*10^6*(7+0.2*L+0.1*L^2);// The input per hour at L=10.41 MW in kJ/hr
H_i2=I/L;// The heat rate in kJ/MW-hr
H_rs=H_i1-H_i2;//Saving in heat rate in  kJ/MW-hr
printf('\n(a)Average rate of heat input=%0.3e kJ/MW-hr \n(b)Saving in heat rate=%0.3e kJ/MW-hr',H_i1,H_rs);
// The answer provided in the textbook is wrong
