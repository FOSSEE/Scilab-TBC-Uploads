clc,clear
printf('Example 1.9\n\n')

V_t=250  //terminal voltage
P=10*10^3  //10kW power of generator
I_L=P/V_t //load current
I_a=I_L  //As seperately excited
V_brush=2*2 // 2 * no of brushes

E=255  //on full load
R_a=(E-V_t-V_brush)/I_a //Because E=V_t+ I_a*R_a  + V_brush

printf('\nArmature resistance of generator is %.3f ohm',R_a)
