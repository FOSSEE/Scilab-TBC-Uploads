//Caption:Determine the speed when armature current is 75 Amp and the excitation is increased by 15 %
//Exam:2.26
clc;
clear;
close;
V=220;//supply voltage(in V)
R_a=0.03;//armature resistance(in Ohm)
R_se=0.07;//field resistance(in Ohm)
I_a1=40;//armature current in first case(in Amp)
N_1=900;//motor running speed at 40 Amp armature current(in rpm)
E_1=V-I_a1*(R_a+R_se);//induced emf due to 40 Amp armature current (in V)
I_a2=75;//armature current in second case(in Amp)
E_2=V-I_a2*(R_a+R_se);//induced emf due to 75 Amp armature current (in V)
//Flux is F_1 when I_a1 and F_2 when I_a2. F_2=1.15*F_1 because Excitation is increased by 15% so F=(F_1/F_2)
F=1.15;//Ratio of F_2/F_1
N_2=ceil(N_1*E_2/(F*E_1));//motor speed when armature current is 75 Amp and the excitation is increased by 15 %(in rpm)
disp(N_2,'motor speed when armature current is 75 Amp and the excitation is increased by 15 %(in rpm)=');