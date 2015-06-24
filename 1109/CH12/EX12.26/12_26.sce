clear;
clc;
V=100;R1=50;R2=60;R3=40;R4=60;R5=40;
Rac=1/((1/(R2+R3))+(1/(R4+R5)));
Rt=Rac+R1;
I=V/Rt;
V1=I*R1;
Vac=V-V1;
Vab=R2*Vac/(R2+R3);
Vad=R5*Vac/(R4+R5);
Vbd=Vab-Vad;
Voc=Vbd;
R1y=R5*R1/(R1+R4+R5);
R2y=R1*R4/(R1+R4+R5);
R3y=R4*R5/(R1+R4+R5);
Rbd=R3y+(1/((1/(R1y+R2))+(1/(R2y+R3))));
printf("The equivalent Thevenin circuit has an emf of %d volts and an internal impedance of %d ohms",Vbd,Rbd);

