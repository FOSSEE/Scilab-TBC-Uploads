clc,clear
printf('Example 2.26\n\n')

T_1=40  //initial torque
//phi_1 is initial flux
//phi_2 is new flux
//T_2 is new torque
//I_a1 is initial current
//I_a2 is new current
phi2_by_phi1 = 1- (30/100)  //decrease by 30 percent
Ia2_by_Ia1=1+(15/100)       //increase by 15 percent

//T (prop.)phi*I_a
T_2=T_1*(phi2_by_phi1)*(Ia2_by_Ia1)
printf('New torque is %.1f N-m',T_2)
