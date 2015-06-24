//caption: a)find the emf generated in a 6 pole machine  b)find speed at which machine generated 550 V emf
//Exam:2.11
clc;
clear;
close;
F_1=0.06;//Flux per pole(in Wb)
N_1=250;//speed of the rotor(in rpm)
A=2;//number of parllel (paths armature wave wound)
P=6;//poles in machine
Z=664;//total conductor in machine
E_g=P*F_1*N_1*Z/(60*A);//emf generated
disp(E_g,'emf generated in machine(in Volts)=');
E_2=550;//new emf generating machine(in V)
F_2=0.058;//flux per pole (in Wb) for generating E_2
N_2=60*E_2*A/(P*F_2*Z);//new speed at which machine generating E_2(in rpm)
disp(N_2,'new speed of the rotor(in rpm)=');