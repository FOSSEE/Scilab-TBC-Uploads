clear;
clc;
//Example 1.9 
//circuit and diode parameters 
V_PS=5;//(V)
R=5;//(KOhm)
V_Y=0.6;//(V)
V_T=0.026;//(Volt)terminal voltage
v_i=0.1//*sin(wt)Volt
//dc analysis
I_DQ=(V_PS-V_Y)/R;
printf('\ndc quiescent current=%f mA\n',I_DQ)
V_O=I_DQ*R;
printf('\ndc output voltage=%f V\n',V_O)
//ac analysis
V_PS=0;
//Kirchhoff voltage law equation becomes
//v_i=i_d*r_d+i_d*R
r_d=V_T/I_DQ//(Ohm)small signal diode diffusion resistance
i_d=v_i/(r_d+R);//ac diode current
printf('\nac diode current=%fsin(wt) A\n',i_d)

v_o=i_d*R;//ac output voltage
printf('\nac output voltage=%fsin(wt) V',v_o)
