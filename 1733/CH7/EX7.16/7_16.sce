//7.16
clc;
Vm=220*2^0.5;
alph=90;
Va=3*3^0.5*Vm*(1+cosd(alph))/(2*%pi);
Kt=2;
Ra=0.72;
disp('For armature current of 5A')
Ia=5;
T=Ia*Kt;
printf("\nTorque=%.2f N-m", T)
Eb=Va-Ia*Ra;
w=Eb/(Kt);
N=w*60/(2*%pi);
printf("\nSpeed=%.2f rpm", N)
disp('For armature current of 10A')
Ia=10;
T=Ia*Kt;
printf("\nTorque=%.2f N-m", T)
Eb=Va-Ia*Ra;
w=Eb/(Kt);
N=w*60/(2*%pi);
printf("\nSpeed=%.2f rpm", N)
disp('For armature current of 20A')
Ia=20;
T=Ia*Kt;
printf("\nTorque=%.2f N-m", T)
Eb=Va-Ia*Ra;
w=Eb/(Kt);
N=w*60/(2*%pi);
printf("\nSpeed=%.2f rpm", N)
disp('For armature current of 30A')
Ia=30;
T=Ia*Kt;
printf("\nTorque=%.2f N-m", T)
Eb=Va-Ia*Ra;
w=Eb/(Kt);
N=w*60/(2*%pi);
printf("\nSpeed=%.2f rpm", N)
disp('For armature current of 50A')
Ia=50;
T=Ia*Kt;
printf("\nTorque=%.2f N-m", T)
Eb=Va-Ia*Ra;
w=Eb/(Kt);
N=w*60/(2*%pi);
printf("\nSpeed=%.2f rpm", N)
disp('For armature current of 60A')
Ia=60;
T=Ia*Kt;
printf("\nTorque=%.2f N-m", T)
Eb=Va-Ia*Ra;
w=Eb/(Kt);
N=w*60/(2*%pi);
printf("\nSpeed=%.2f rpm", N)
