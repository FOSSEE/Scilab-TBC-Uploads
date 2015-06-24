//1.13
clc;
disp('when current is constant 20A')
It=20;
Vt=0.9+0.02*It;
P_dissipation=Vt*It;
printf("Power dissipation=%.0f W",P_dissipation)
disp('when current is constant 20A for one half cycle in each full cycle')
P_dissipation=Vt*It/2;
printf("Power dissipation=%.0f W",P_dissipation)
disp('when current is constant 20A for one third cycle in each full cycle')
P_dissipation=Vt*It/3;
printf("Power dissipation=%.2f W",P_dissipation)