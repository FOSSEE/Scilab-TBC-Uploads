//Ex:2.35
clc;
clear;
close;
// The max radiation is directed along x=pi/2. Therefore, Ymax=Ao
// radiation intensity in example 2.34 is , Wt=pi^2*Ao
// then, max directivity, Do=4*pi*Ymax/Wt=4*pi*Ao/pi^2*Ao=4/pi
Do=4/%pi;// the max directivity
// since the radiation intensity is only a function of angle x, the directivity as a function of the directional angles is represented by, D=Do*sin(x)
printf("The max directivity = %f", Do);
printf("\n The directivity as a function of the directional angles is represented by, D=Do*sin(x), where Do is the max value of directivity");