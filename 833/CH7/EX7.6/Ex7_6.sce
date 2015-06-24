//Caption: Select a two circuit armature winding for a d.c machine
//Exa:7.6
clc;
clear;
close;
p=4//Number of poles 
n=1000//Speed of d.c. machine(in r.p.m)
V=400//Voltage of d.cmachine(in volts)
B=0.04//Flux per pole(in weber)
s_1=41//Slot 1
s_2=45//Slot 2
s_3=51//Slot 3
a=2//Number of parallel paths
Z=(V*60*a)/(B*n*p)
Z_c=Z/a
Y=(s_3+1)/(p/2)
t=3//turns per coil
c=t*a
z=s_3*c
disp(z,c,t,s_3,'slots,turn coils,coils sides per slot and total number of conductors=')