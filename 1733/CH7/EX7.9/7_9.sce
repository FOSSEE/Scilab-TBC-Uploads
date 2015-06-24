//7.9
clc;
Vm=230*2^0.5;
Vf=2*Vm/%pi;
Rf=200;
If=Vf/Rf;
T=50;
Kt=0.8;
Ia=T/(Kt*If);
w=2*%pi*900/60;
Vb=Kt*w*If;
Ra=0.3;
Va=Vb+Ia*Ra;
alph_a=acosd(Va*%pi/Vm-1)
printf("Firing angle of converter in the armature circuit=%.3f degree",alph_a)
Po_a=Va*Ia;
Iin=Ia*((%pi-alph_a*%pi/180)/%pi)^0.5;
VA_input=Iin*230;
pf=Po_a/VA_input;
printf("\npower factor of converter in the armature circuit=%.3f lagging",pf)
