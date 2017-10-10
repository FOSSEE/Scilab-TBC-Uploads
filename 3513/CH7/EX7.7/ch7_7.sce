//Calculate the control limits for the p-chart using 3σ limits
//page no 150
clear
clc;
ds=158;
ns=2196;
P1=ds/ns;
n=54;
//Control limits for p-chart
mprintf("\P1 = %.4f \n",P1);
UCL=P1+3*sqrt((P1*(1-P1))/n);
mprintf("\UCL = %.2f \n",UCL);
LCL=P1-3*sqrt((P1*(1-P1))/n);
mprintf("\LCL = %.2f \n",LCL);
CL=P1;
mprintf("\CL = %.2f \n",CL);
