//1.33
clc;
Im=1000;
De=0.14;
It=75;
np=(Im/It)/(1-De);
printf("np = %.2f ",np)
disp('so the no. of thyristors in parallel are 16')
Vs=7500;
De=0.14;
Vd=500;
ns=(Vs/Vd)/(1-De);
printf("ns = %.2f ",ns)
disp('so the no. of thyristors in series are 18')