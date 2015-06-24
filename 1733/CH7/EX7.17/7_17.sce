//7.17
clc;
Vm=400*2^0.5;
alph=30;
Vavg=3*3^0.5*Vm/(2*%pi*3^0.5)*(1+cosd(alph));
I=5;
R=0.1;
Eb=Vavg-I*R;
N=Eb/0.3;
printf("Speed at no load=%.0f rpm",N)
N=1600;
Eb=N*0.3;
I=50;
V=Eb+I*R;
alph=acosd(3^0.5*2*%pi*V/(Vm*3*3^0.5)-1)
printf("\nFiring angle =%.2f degree",alph)