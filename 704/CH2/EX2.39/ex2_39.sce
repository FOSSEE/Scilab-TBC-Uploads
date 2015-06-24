//Caption:Calculate the speed and calculate the electro magnetic torque.
//Exam:2.39
clc;
clear;
close;
V_1=230;//supply voltage(in V)
I_a1=100;//motor taking current from supply(in Amp)
N_1=600;//speed of the motor when I_a1 current taking from supply(in rpm)
R_a=0.12;//resistance of armature circuit(in Ohm)
R_f=0.03;//resistance of series winding(in Ohm)
R=R_a+R_f;//total resistance(in Ohm)
I_a2=50;//desired current of the motor
E_1=V_1-I_a1*R;//emf induced when current I_a1 flowing
E_2=V_1-I_a2*R;//emf induced when current I_a2 flowing
N_2=(E_2/E_1)*(I_a1/I_a2)*N_1;//speed of the motor when 50 Amp current taking from supply(in rpm)
disp(N_2,'speed of the motor when 50 Amp current taking from supply(in rpm)=');
T_1=E_1*I_a1*60/(2*3.14*N_1);//electro-magnetic torque generated when motor running at 600 rpm(in Nw-m)
disp(T_1,'electro-magnetic torque generatedwhen motor running at 600 rpm(in Nw-m)');
T_2=E_2*I_a2*60/(2*3.14*N_2);//electro-magnetic torque generated in second case(in Nw-m)
disp(T_2,'electro-magnetic torque generated in second case(in Nw-m)');