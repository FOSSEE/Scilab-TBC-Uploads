clear;
clc;
//Example 1.6
Is=10^-13;//(A)reverse saturation current
V_PS=5;//(V)applied voltage
R=2;//(KOhm)Resistance in circuit
V_T=0.026;//(Volt)terminal voltage
//V_PS=Is*R*(exp(V_D/V_T)-1)+V_D
//5=(10^-13)*(2000)*(exp(V_D/V_T)-1)+V_D
//let right side of equation be x=(10^-13)*(2000)*(exp(V_D/V_T)-1)+V_D
V_D=0.6;//(V)
x=(10^-13)*(2000)*(exp(V_D/V_T)-1)+V_D
//so the equation is not balanced
V_D=0.65;//(V)
x=(10^-13)*(2000)*(exp(V_D/V_T)-1)+V_D
//again equation is not balanced .solution for V_D is between 0.6V and 0.65V
V_D=0.619;//(V)
x=(10^-13)*(2000)*(exp(V_D/V_T)-1)+V_D
//essentially equal to the value of the left side of the equation i.e 5V
printf('\ndiode voltage=%f V',V_D)
I_D=(V_PS-V_D)/R;//(A)diode current
printf('\nthe diode current=%f mA',I_D)
