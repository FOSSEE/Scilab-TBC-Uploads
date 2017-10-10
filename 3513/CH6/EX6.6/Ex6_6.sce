//Compute the 3σ limits
//page no 113
clear
clc;
USL = 125;
LSL = 115;
X1 = 120;
sd = 1.5;
X2=X1;
n = 4;
A2 = 0.73;
d2 = 2.059;
D3 = 0.0;
D4 = 2.28;
R1=sd*d2;
n=4;
//Control limits for R-chart
UCL = D4*R1;
mprintf("\UCL = %.2f \n",UCL);
LCL = D3*R1;
mprintf("\LCL = %.2f \n",LCL);
CL = R1;
mprintf("\CL = %.2f \n",CL);
//Control limits for X -chart
UCL = X1+A2*R1;
mprintf("\UCL = %.2f \n",UCL);
LCL = X1-A2*R1;
mprintf("\LCL = %.2f \n",LCL);
CL = X2;
mprintf("\CL = %.2f \n",CL);
Xnew=122.4;
Xnew2=117.6;
Zb=(Xnew/Xnew2)/sd;
pr = 0.0418; //probability
Za =(125-122.4)/sd;
pr = 95.82; //probability
mprintf("\probability = %.2f \n",pr);
sdn=sd/sqrt(n);
Za =(117.74-117.6)/sdn;
pr = 57.14; //probability
Zb =(122.26-122.4)/sdn;
pr = 42.86; //probability
mprintf("\probability = %.2f \n",pr);
P=100-pr;
mprintf("\final probability = %.2f \n",P);
