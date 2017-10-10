//Calculate the control limits for the p-chart using 3σ limits
//page no 144
clear
clc;
d=312;
n=65;
P1=d/(n*15);
//Control limits for p-chart
mprintf("\P1 = %.4f \n",P1);
UCL=P1+3*sqrt((P1*(1-P1))/n);
mprintf("\UCL = %.2f \n",UCL);
LCL=P1-3*sqrt((P1*(1-P1))/n);
mprintf("\LCL = %.2f \n",LCL);
CL=P1;
mprintf("\CL = %.2f \n",CL);
P1 =(312-6)/(65*14);
//Again control limits
UCL=P1+3*sqrt((P1*(1-P1))/n);
mprintf("\UCL = %.2f \n",UCL);
LCL=P1-3*sqrt((P1*(1-P1))/n);
mprintf("\LCL = %.2f \n",LCL);
CL=P1;
mprintf("\CL = %.2f \n",CL);
