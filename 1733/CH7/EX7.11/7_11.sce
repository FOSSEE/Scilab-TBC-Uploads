//7.11
clc;
Vm=675*2^0.5;
Ia1=30;
N1=350;
N2=500;
Ia2=Ia1*N2/N1;
printf("Armature current of the semi converter=%.2f A",Ia2)
Va1=(1+cos(90.5*%pi/180))*Vm/%pi;
Eb1=Va1-Ia1*(0.22+0.22);
Eb2=Eb1*Ia2*N2/(Ia1*N1);
Va2=Eb2+Ia2*(0.22+0.22);
alph_a=acosd(Va2*%pi/Vm-1);
printf("\nFiring angle of the semi converter=%.2f degree",alph_a)
