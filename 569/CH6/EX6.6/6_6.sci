// calculating output voltage due to offset voltage
clc;
V1=1;
V2=-2;
Rf=500;
R1=250;
R2=100;
Vo=-{[(Rf/R1)*V1]+[(Rf/R2)*V2]};
disp(Vo,'output voltage(V)=')