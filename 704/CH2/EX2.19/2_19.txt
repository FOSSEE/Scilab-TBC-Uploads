//Capyion:find the change in back emf from no load to load
//Exam:2.19
clc;
clear;
close;
V=220;//given voltage to machine(in V)
R_a=0.5;//armature circuit resistance(in ohm)
I_1=25;//full load armature current(in Amp)
I_2=5;//no load armature current(in Amp)
E_1=V-I_1*R_a;//back emf at full load(in V)
E_2=V-I_2*R_a;//back emf at no load(in V)
E=E_2-E_1;//change in back emf no load to load
disp(E,'change in back emf from no load to load(in Volts)=');