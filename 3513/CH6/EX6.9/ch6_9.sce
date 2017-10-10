//Determine the control limits for X and R chart..
//page no 121
clear
clc;

K = 20;
X1 = 669.2;
R1=126.0;
X2=X1/K;
R2=R1/K;
A2 = 0.58;
d2 = 2.326;
D3 = 0.0;
D4 = 2.11;
//(a) Control limits for R-chart
mprintf("Control limits for R-chart");
UCL = D4*R2;
mprintf("\UCL = %.2f \n",UCL);
LCL = D3*R2;
mprintf("\LCL = %.2f \n",LCL);
CL = R1;
mprintf("\CL = %.2f \n",CL);
R2=(R1-14-19)/(K-2);
//Again Control limits for R-chart
UCL = D4*R2;
mprintf("Again Control limits for R-chart");
mprintf("\UCL = %.2f \n",UCL);
LCL = D3*R2;
mprintf("\LCL = %.2f \n",LCL);
CL = R1;
mprintf("\CL = %.2f \n",CL);
R2=(R1-14-19-13)/(K-3);
//Control limits for X -chart
mprintf("Control limits for X-chart");
UCL = X2+A2*R2;
mprintf("\UCL = %.2f \n",UCL);
LCL = X2-A2*R2;
mprintf("\LCL = %.2f \n",LCL);
CL = X2;
X2=33.22;
mprintf("Again Control limits for X-chart");
UCL = X2+A2*R2;
mprintf("\UCL = %.2f \n",UCL);
LCL = X2-A2*R2;
mprintf("\LCL = %.2f \n",LCL);
CL = X2;
//(b)
sd=R2/d2;
mprintf("\Standard Deviation = %.2f \n",sd);
pc=6*sd;
mprintf("\process capability = %.2f \n",pc);
UNTL = X2+3*sd;
LNTL = X2-3*sd;
mprintf("\UNTL = %.2f \n",UNTL);
mprintf("\LNTL = %.2f \n",LNTL);
USL = 38;
LSL = 28;
Z=(LSL-CL)/sd;
pr1 = 0.52; //probability
mprintf("\n Hence probability = %.2f \n",pr1);
Z=(USL-CL)/sd;
pr2 = 99.09; //probability
mprintf("\n Hence probability = %.2f \n",pr2);
R=100-pr2;
R2=pr1+R;
mprintf("\n The total rejections will be = %.2f \n",R2);
