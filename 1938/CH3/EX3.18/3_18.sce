clc,clear
printf('Example 3.18\n\n')

V=200,I_L=40,
R_sh=200,R_a=0.2 //shunt field winding and armature resistance
//case(a) :  As a generator
P_out_g=V*I_L //output poewr as generator
I_sh=V/R_sh
I_a = I_L + I_sh
E = V + I_a*R_a
P_a_g=E*I_a  //power developed in armature
P_cu_g= R_a*I_a^2 + R_sh*I_sh^2 //copper loss as genrator
printf('(i)Output as generator is %.0f kW\n',P_out_g/1000)

//case(b) :  As a motor
P_in_m=V*I_L //input power as motor
I_sh=V/R_sh
I_a = I_L - I_sh
E_b = V - I_a*R_a
P_a_m=E_b*I_a  //power developed in armature
P_cu_m= R_a*I_a^2 + R_sh*I_sh^2//copper loss as motor
printf('(ii)Input as motor is %.0f kW\n', P_in_m/1000)
printf('\n(iii)Power developed in Armature:\n%.4f kW for generator\n%.4f kW for motor\n',P_a_g/1000,P_a_m/1000)
printf('\n(iv)Copper losses:\n%.1f W for generator\n%.1f W for motor',P_cu_g,P_cu_m)
