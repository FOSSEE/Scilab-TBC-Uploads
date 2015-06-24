//Caption: Calculate (a)Efficiency on full load (b)Efficiency on 40A input (c)Efficiency on 25A input (d)Full load speed regulation 
//Exa:8.7
clc;
clear;
close;
V=230//Voltage of motor(in volts)
i_l=50//Full load current(in A)
r_a=0.25//Armature resistance(in ohms)
r_f=230//Field resistance(in ohms)
i_o=3//No load current(in A)
i_1=40//Input current(in A)
i_2=25//Input current(in A)
P_c=V*i_o
P_i1=V*i_l
i_f=V/r_f
i_a1=i_l-i_f
L_fl=((i_a1^2)*r_a)+P_c
Eff_1=((P_i1-L_fl)/P_i1)*100
disp(Eff_1,'(a)Efficiency on full load(in%)=')
P_i2=V*i_1
i_a2=i_1-i_f
L=((i_a2^2)*r_a)+P_c
Eff_2=((P_i2-L)/P_i2)*100
disp(Eff_2,'(b)Efficiency on 40A input(in%)=')
P_i3=V*i_2
i_a3=i_2-i_f
L_1=((i_a3^2*r_a)+P_c)
Eff_3=((P_i3-L_1)/P_i3)*100
disp(Eff_3,'(c)Efficiency on 25A input(in%)=')
I_ao=i_o-i_f
E_bo=V-(I_ao*r_a)
E_bl=V-(r_a*i_a1)
Re=((E_bo-E_bl)/E_bo)*100
disp(Re,'(d)Full load speed regulation(in%)=')