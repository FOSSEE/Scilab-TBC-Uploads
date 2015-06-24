//Caption: Calculate efficiency of (a)motor and (b)generator
//Exa:8.10
clc;
clear;
close;
V=230//Line voltage for both shunt machines(in volts)
I=70//Line current excluding field currents of both machines(in A)
i_a=400//Armature current(in A)
i_f1=4//Field current of first machine(in A)
i_f2=3//Field current of second machine(in A)
r_a=0.03//Resistance of armature of each mchine(in ohms)
P_acm=(i_a^2)*r_a
P_i=V*I
I_g=i_a-I
P_acg=(I_g^2)*r_a
P_f=(P_i-P_acm-P_acg)/2
P_m=(V*i_a)+(V*i_f2)
P_fc=V*i_f2
L_t=P_fc+P_acm+P_f
P_o=P_m-L_t
n_m=(P_o/P_m)*100
disp(n_m,'(a)Efficiency of motor(in%)=')
P_og=V*I_g
P_fcu=V*i_f1
L_t1=P_f+P_fcu+P_acg
P_ig=P_og+L_t1
n_g=(P_og/P_ig)*100
disp(n_g,'(b)Efficiency of generator(in%)=')