//Electric Drives:concepts and applications by V.subrahmanyam
//Publisher:Tata McGraw-Hill 
//Edition:Second 
//Ex1_4a
clc;
clear;
V=440;// voltage in V
Ia=80;// Current in A
Na=1200;//Speed in rpm
Na1=125.6;// Speed in rad/sec
R1=0.55;// Resistance in ohm
R2=110;// Resistance in ohm
N0=600;// Speed in rpm
N01=62.8;//Speed in rpm
Nf=300;// Speed in rpm
Nf1=31.4;// Speed in rpm
Rsh=1.256;// Resistance in ohm
E=V-(Ia*R1);
K=E/Na1; 
E1=K*N01;
Tf=K*Ia;
E2=E1*(Nf/N0);
V2=E2+(Ia*R1);
Is=(V2/Rsh)+Ia;
Il=Is+(V/R2);
Pi=V*Il;
Po=Tf*Nf1;
Eff=(Po/Pi)*100;
disp(Eff,'the effeciency of the motor in % is:')
