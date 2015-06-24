//1.29
clc;
Im=750;
De=0.25;
It=175;
np=(Im/It)/(1-De);
printf("np = %.2f ",np)
disp('so the no. of thyristors in parallel are 6')
Vs=3000;
De=0.25;
Vd=800;
ns=(Vs/Vd)/(1-De);
printf("ns = %.2f ",ns)
disp('so the no. of thyristors in series are 5')