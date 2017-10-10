//Compute rejections percentage
//page no 117
clear
clc;
n = 2;
K = 2;
R1 = 0.81;
X = 27.635;
USL = 1.207;
LSL = 1.033;
d2 = 1.128;
A2 = 1.88;
D3 = 0.0;
D4 = 3.27;
X2=X/K;
X2=R1/K;
sd=R1/d2
mprintf("\(a) Standard Deviation = %.2f \n",sd);
UNTL = X2+3*sd;
LNTL = X2-3*sd;
mprintf("\UNTL = %.2f \n",UNTL);
mprintf("\LNTL = %.2f \n",LNTL);
CL = X2;
mprintf("\CL = %.2f \n",CL);
//b) The percentage of rejection
Z =(1.033-1.1054)/sd;
mprintf("\Z = %.2f \n",Z);
pr = 0.59; //probability
mprintf("\n Hence probability = %.2f \n",pr);
T=USL-LSL;
T2=6*sd;
mprintf("\n (c) 0.1722 (T2) < 0.174(T) the process is capable of meeting the specification limits.");
//(d)
X2=1.12;
//Control limits for R-chart
UCL = D4*R1;
mprintf("\ (b) UCL = %.2f \n",UCL);
LCL = D3*R1;
mprintf("\LCL = %.2f \n",LCL);
CL = R1;
mprintf("\CL = %.2f \n",CL);
//Control limits for X -chart
UCL = X2+A2*R1;
mprintf("\UCL = %.2f \n",UCL);
LCL = X2-A2*R1;
mprintf("\LCL = %.2f \n",LCL);
CL = X2;
mprintf("\CL = %.2f \n",CL);
