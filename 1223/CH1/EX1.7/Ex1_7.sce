clear;
clc;
//Example 1.7
//piecewise linear diode parameters
V_Y=0.6;//(V)
r_f=0.010;//(KOhm)
V_PS=5;//(V)applied voltage
R=2;//(KOhm)Resistance in circuit
I_D=(V_PS-V_Y)/(R+r_f);//(A)diode current
printf('\nthe diode current=%f mA\n',I_D)
V_D=V_Y+I_D*r_f;//(V)diode voltage
printf('\ndiode voltage=%f V',V_D)
