//8.17
clc;
R1=50*10^3;
R=10*10^3;
Vs1=4.5;
Vs2=5;
Vo=R1/R*(Vs2-Vs1);
printf("Output voltage=%.1f V", Vo)