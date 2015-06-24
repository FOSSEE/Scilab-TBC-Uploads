clc,clear
printf('Example 1.8\n\n')

V_t=250  //Terminal voltage
R_sh=100  //Resistance of shunt field winding
I_sh=V_t/R_sh //shunt current
R_a=0.22  //Armature resistance

P=5*10^3  //Load power
I_L=P/V_t  //Load current
I_a=I_L+I_sh //armature current

E=V_t + I_a*R_a  //Induced emf
printf('\nInduced e.m.f to supply the 5kW load is %.2f V',E)
