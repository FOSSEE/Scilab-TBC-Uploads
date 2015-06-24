clc,clear
printf('Example 1.17\n\n')

P=4 //number of poles
A=P // because of lap wound
N=750 //speed in rpm
Z=720 //number of armature conductors
phi=30*10^-3  //flux per pole in weber
R_sh=200,R_a=0.4,R_L=15, //resistance of shunt winding,armature,series field
E=phi*P*N*Z/(60*A) //generated emf

//solving the following equations for V_t
//E= V_t + I_a*R_a
//E= V_t + (I_L + I_sh)*R_a
//E= V_t + ((V_t/R_L) + (V_t/R_sh))*R_a
V_t=E/(1+(R_a/R_L)+(R_a/R_sh))
printf('Terminal voltage = %.4f V',V_t)
