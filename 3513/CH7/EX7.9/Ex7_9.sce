//Calculate the control limits for the p-chart using 3σ limits
//page no 152
clear
clc;
ds=230;
ns=4150;
P1=ds/ns;
n=200;
//Control limits for p-chart
mprintf("\P1 = %.4f \n",P1);
UCL=P1+3*sqrt((P1*(1-P1))/n);
mprintf("\UCL = %.2f \n",UCL);
LCL=P1-3*sqrt((P1*(1-P1))/n);
mprintf("\LCL = %.2f \n",LCL);
CL=P1;
mprintf("\CL = %.2f \n",CL);
P1=(230-30)/(4150-200);
//Control limits for p-chart
mprintf("\Again for \nP1 = %.4f \n",P1);
UCL=P1+3*sqrt((P1*(1-P1))/n);
mprintf("\UCL = %.2f \n",UCL);
LCL=P1-3*sqrt((P1*(1-P1))/n);
mprintf("\LCL = %.4f \n",LCL);
CL=P1;
mprintf("\CL = %.2f \n",CL);
