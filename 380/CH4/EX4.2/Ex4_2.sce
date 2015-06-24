//Caption:Find the (a) a-ratio (b) current in primary (c) the power supplied to load (d) and the flux in the core
//Exa:4.2
clc;
clear;
close;
N_p=150;//no. of turns in primary winding
N_s=750;//no. of turns in secondary winding
f=50;//frequency in Hz
I_2=4;//load current (in Amperes)
V_1=240;//voltage on primary side (in Volts)
pf=0.8;//power factor
a=N_p/N_s;
disp(a,'(a) a-ratio=');
I_1=I_2/a;
disp(I_1,'(b) current in primary (in Amperes)=');
V_2=V_1/a;
disp(V_2,'(c) voltage on secondary side (in Volts)=');
P_L=V_2*I_2*pf;
disp(P_L,'(d) power supplied to the load (in Watts)=');
flux=V_1/(4.44*f*N_p);
disp(flux*10^3,'(e) flux in the core (in mili-Weber)=');