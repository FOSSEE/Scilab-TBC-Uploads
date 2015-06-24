//Caption: Find (a)e.m.f generated at 750r.p.m for lap wound (b)e.m.f generated at 600r.p.m for wave wound (c)Speed to be driven for 400V for same flux per pole
//Exa:7.7
clc;
clear;
close;
p=4//Number of poles
B=0.04//Flux per pole(in weber)
c=740//Number of conductors for lap connection
n_1=750//Speed of machine(in r.p.m)
n_2=600//Speed of machine(in r.p.m)
V=400//Voltage of machine(in volts)
a=4//Number of parallel paths for lap winding
b=2//Number of parallel paths for wave winding
E=(B*c*n_1*p)/(60*a)
disp(E,'(a)E.M.F generated at 750r.p.m for lap wound(in volts)=')
E_1=(B*c*n_2*p)/(60*b)
disp(E_1,'(b)E.M.F generated at 600r.p.m for wavewound(in volts)=')
n=(V*60*b)/(B*c*p)
disp(n,'(c)Speed of machine(in r.p.m)=')