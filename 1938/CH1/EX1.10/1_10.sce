clc,clear
printf('Example 1.10\n\n')

R_a=0.5,R_se=0.03  //resitance due to armature and series field winding
V_brush=2 //brush drop
N=1500 //generator speed in r.p.m
coils=540
turns_per_coil=6
total_turns= coils*turns_per_coil
Z=2*total_turns //Total conductors
I_a=50 //armature current

phi=2*10^-3  //flux per pole in webers
E=phi*N*Z/(60)  //A=P for lap-wound and they cancel out
V_t =E- (I_a*(R_a+R_se)  + V_brush)   //Because E=V_t+ I_a*R_a  + V_brush
printf('\nTerminal voltage is %.1f V',V_t)
