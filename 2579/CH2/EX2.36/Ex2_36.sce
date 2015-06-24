//Ex:2.36
clc;
clear;
close;
// The radiation intensity is given by, F=r^2*Wr=Ao*(sin(x))^2
// The max radiation is directed along x=pi/2. therefore, Ymax=Ao
// the total radiated power is given by,Wt= Ao(8*pi/3)
// then the max directivity is equal to
// Do=4*pi*Ymax/Wt=4*pi*Ao/(8*pi*Ao/3)=3/2
Do=3/2;// the max directivity
printf("The max directivity = %f", Do);
printf("\n The directivity as a function of the directional angles is represented by, D=1.5*(sin(x))^2");