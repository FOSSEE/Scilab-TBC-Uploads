//Caption: Calculate (a)Total armature current (b)Current per armature path (c)Generated e.m.f
//Exa:7.8
clc;
clear;
close;
p=4//Number of poles
P=4000//Power of generator(in watts)
V=230//Voltage of generator(in volts)
r_f=115//Field resistance(in ohms)
r_a=0.1//Armature resistance(in ohms)
a=p//number of parallel paths
i_f=V/r_f
i_l=P/V
I_a=i_l+i_f
disp(I_a,'(a)Armature current(in A)=')
i=I_a/p
disp(i,'(b)Current per armature path(in A)=')
E=V+(I_a*r_a)
disp(E,'(c)E.M.F generated(in volts)=')