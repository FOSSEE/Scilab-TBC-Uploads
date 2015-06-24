//Exa2.29
clc;
clear;
close;
//given data
//Take iron as metal A and copper as metal B with respect to lead
//For metal A:
p_A=16.2;
q_A=-0.02;
//For metal B:
p_B=2.78;
q_B=+0.009;
p_AB=p_A-p_B;
q_AB=q_A-q_B;
T2=210;//in degree C
T1=10;// in degree C
E=p_AB*(T2-T1)+q_AB/2*(T2^2-T1^2);
disp("Thermo-electric emf is : "+string(E)+" micro V");
Tn=-p_AB/q_AB;
disp("Neutral temperature is : "+string(Tn)+" degree C");