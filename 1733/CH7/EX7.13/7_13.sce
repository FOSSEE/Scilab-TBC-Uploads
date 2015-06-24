//7.13
clc;
Vm=400*2^0.5/(3^0.5);
Vf=3*3^0.5*Vm/%pi;
Rf=250;
If=Vf/Rf;
Kt=1.33;
Ia=50;
w=2*%pi*1200/60;
Vb=Kt*w*If;
Ra=0.3;
Va=Vb+Ia*Ra;
alph_a=acosd(Va/Vf);
printf("Firing angle of converter in the armature circuit=%.3f degree",alph_a)
