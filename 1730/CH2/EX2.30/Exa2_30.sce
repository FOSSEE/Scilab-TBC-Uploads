//Exa2.30
clc;
clear;
close;
//given data
p_A=17.34;
q_A=-0.0487;
p_B=1.36;
q_B=+0.0095;
p_AB=p_A-p_B;
q_AB=q_A-q_B;
T2=210;//in degree C
T1=10;// in degree C
E=p_AB*(T2-T1)+q_AB/2*(T2^2-T1^2);//in miu V
E=E*10^-3;//in m V
disp("Thermo-electric emf is : "+string(ceil(E))+" m V");
Tn=-p_AB/q_AB;
disp("Neutral temperature is : "+string(ceil(Tn))+" degree C");
Tc=10;// in degree C
Ti=Tn+(Tn-Tc);
disp("Temperature of inversion is : "+string(ceil(Ti))+" degree C");
E_max=15.98*(275-10)-1/2*0.0582*[275^2-10^2];//in miu V
E_max=E_max*10^-3;// in mV
disp("Maximum possible thermo-electric emf at neutral temperature that is at 275 degree C is : "+string(E_max)+" mV");