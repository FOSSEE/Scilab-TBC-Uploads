//Compute process average and std. deviation
//page no 112
clear
clc;

USL = 51;
LSL = 45;
UNTL=USL;
LNTL=LSL;
sd=1;
X2=48;
mprintf("\The process average = %.2f \n",X2);
A2 = 0.73;
d2 = 2.059;
D3 = 0.0;
D4 = 2.28;
R2= sd*d2;
//Control limits for R-chart
UCL = D4*R2;
mprintf("\UCL = %.2f \n",UCL);
LCL = D3*R2;
mprintf("\LCL = %.2f \n",LCL);
CL = R2;
mprintf("\CL = %.2f \n",CL);
//Control limits for X -chart
UCL = X2 + A2*R2;
mprintf("\UCL = %.2f \n",UCL);
LCL = X2 - A2*R2;
mprintf("\LCL = %.2f \n",LCL);
CL=X2;
mprintf("\CL = %.2f \n",CL);
