clc,clear
printf('Example 1.12\n\n')

R_sh=53  //Resistance of field winding
V_t=100 //terminal voltage 
I_sh =V_t/R_sh //shunt current
I_f=I_sh
R_a=0.1 //armature resistance
E_o=143 // for I_sh= I_f = 1.8867 as obtained from graph
I_a=(E_o-V_t)/R_a  //Because E_o=V_t + I_a*R_a
I_L=I_a-I_sh  //no load current
printf('\n\nNote: Open circuit voltage was obtained as follows\nE_o=R_sh*I_f   // y=mx+c form with c=0 and R_sh=53\nHence, a line with slope 53 through origin is made to intersect OCC at 150 V')

printf('\nTherefore, Open circuit voltage is 150 V')
printf('\n\n\nNo load current is %.4f A    ',I_L)
