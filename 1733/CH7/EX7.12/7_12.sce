//7.12
clc;
Vm=230*2^0.5;
Eg=-131.9
Ia=50;
Ra=0.25;
Va=Eg+Ia*Ra+2;
alph_a=acosd(Va*%pi/(2*Vm))
printf("Firing angle of converter in the armature circuit=%.2f degree",alph_a)
Po=abs(Va*Ia);
printf("\npower back to source=%.3f W",Po)