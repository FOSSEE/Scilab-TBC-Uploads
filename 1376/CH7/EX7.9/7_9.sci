//7.9
clc;
R2=1000;
R4=833;
f=50;
w=2*%pi*f;
C=0.38*10^-6;
R3=16800;
R1=(R2*R3*R4*w^2*C^2)/(1+w^2*R4^2*C^2);
printf("Resistance=%.2f ohm",R1)
L=R2*R3*C/(1+w^2*R4^2*C^2);
printf("Inductance=%.2f H",L)