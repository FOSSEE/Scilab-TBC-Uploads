
clc;
L=6; 
C=0.01e-6;
i=10;
v=i*sqrt(L/C);
R=.5*v/i;
R=round(R/10)*10;
printf("damping resistance in ohms=%fkohms",R/1e3);
