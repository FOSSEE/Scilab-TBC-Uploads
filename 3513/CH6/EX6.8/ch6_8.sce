//Determine the control limits for X -R chart.
//page no 119
clear
clc;
USL = 175;
LSL = 135;
n = 5;
K = 50;
X1 = 7660;
R1=880;
X2=X1/K;
R2=R1/K;
A2 = 0.58;
d2 = 2.326;
D3 = 0.0;
D4 = 2.11;
//Control limits for R-chart
UCL = D4*R2;
mprintf("\UCL = %.2f \n",UCL);
LCL = D3*R2;
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
X2 = 153.2;
sd=R2/d2;
UNTL = X2+3*sd;
LNTL = X2-3*sd;
mprintf("\UNTL = %.2f \n",UNTL);
mprintf("\LNTL = %.2f \n",LNTL);
USL = 175;
LSL = 135;
Z=(LSL-CL)/sd;
pr1 = 0.81; //probability
mprintf("\n Hence probability = %.2f \n",pr1);
Z=(USL-CL)/sd;
pr2 = 99.8; //probability
mprintf("\n Hence probability = %.2f \n",pr2);
R=100-pr2;
R2=pr1+R;
mprintf("\n Total portion of the product which does not confirm with the specifications = %.2f \n",R2);
//(c)
Cl=155;
Z=(LSL-CL)/sd;
pr1 = 0.41; //probability
mprintf("\n Hence probability = %.2f \n",pr1);
Z=(USL-CL)/sd;
pr2 = 99.59; //probability
mprintf("\n Hence probability = %.2f \n",pr2);
R=100-pr2;
R2=pr1+R;
mprintf("\n The total rejections will be = %.2f \n",R2);
