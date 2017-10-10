//Calculate the control limits for the p-chart using 3σ limits
//page no 148
clear
clc;
ds=614;
ns=33725;
P1=ds/ns;
n=6000;
//Control limits for p-chart
mprintf("\P1 = %.4f \n",P1);
UCL=P1+3*sqrt((P1*(1-P1))/n);
mprintf("\UCL = %.2f \n",UCL);
LCL=P1-3*sqrt((P1*(1-P1))/n);
mprintf("\LCL = %.2f \n",LCL);
CL=P1;
mprintf("\CL = %.2f \n",CL);
