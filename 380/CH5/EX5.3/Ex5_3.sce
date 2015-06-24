//Caption:Find the (a)induced emf in the armature winding (b)induced emf per coil (c)induced emf per turn (d)induced emf per conductor
//Ex:5.3
clc;
clear;
close;
C=24;//no. of coils
N_c=18;//no. of turns per coil
P=2;//no. of pole
W_m=183.2;//angular velocity(in rad/sec)
Z=2*C*N_c;//total armature conductors
a=2;//no. of parallel paths
L=0.2;//effective length of machine(in meter)
r=0.1;//radius of armature(in meter)
A_p=(2*%pi*r*L)/P;//actual pole area
A_e=A_p*0.8;//effective pole area
B=1;//flux density per pole(in Tesla)
Phy=B*A_e;//effective flux per pole
K_a=(Z*P)/(2*%pi*a);//machine constant
E_a=K_a*Phy*W_m;
disp(E_a,'(a) induced emf in armature winding  (in Volts)=');
E_coil=E_a/(C/a);
disp(E_coil,'(b) induced emf per coil  (in Volts)=');
E_turn=E_coil/N_c;
disp(E_turn,'(c) induced emf per turn  (in Volts)=');
E_cond=E_turn/2;
disp(E_cond,'(d) induced emf per conductor  (in Volts)=');