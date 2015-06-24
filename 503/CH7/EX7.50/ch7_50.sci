//to determine speed regulation, load speed and power regulation and compare power wasted in both cases

clc;
V=230;
Ra=2;
Ia=5;
Ea=V-Ia*Ra;
n=1250;
w=2*%pi*n/60;
k=Ea/w;    //k=Ka*phi
Re=15;
Ia0=1;
Ea=V-Ia0*(Ra+Re);
w0=Ea/k;
Ia=5;
Ea=V-Ia*(Ra+Re);
w=Ea/k;
wr=(w0-w)*100/w;
disp(wr,'(i)speed regulation(%)');

R1=10;
R2=15;
B=R2/(R1+R2);
V_TH=V*B;
R_TH=R1*B;
Ea=V_TH-Ia0*(R_TH+Ra);
w0=Ea/k;
Ia=5;
Ea=V_TH-Ia*(R_TH+Ra);
w=Ea/k; 
wr=(w0-w)*100/w;
disp(wr,'(ii)speed regulation(%)');

Pe=Ia^2*Re;
disp(Pe,'power loss by rheostat control(W)');
Ra=2;
Ea=98;
Va=Ea+Ra*Ia;
P2=Va^2/R2;
I2=Va/R2;
I1=I2+Ia;
P1=I1^2*R1;
Pe=P1+P2;
disp(Pe,'power loss by shunted armature control(W)');
