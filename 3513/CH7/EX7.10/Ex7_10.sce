//Calculate value of standard fraction defective would you recommend for the future
//page no 153
clear
clc;
P1=0.04;
n=1600;
minsg=P1+(25/100)*n;
maxsg=P1-(25/100)*n;

//(a) Control limits for p-chart
mprintf("\P1 = %.4f \n",P1);
UCL=P1+3*sqrt((P1*(1-P1))/n);
mprintf("\UCL = %.2f \n",UCL);
LCL=P1-3*sqrt((P1*(1-P1))/n);
mprintf("\LCL = %.2f \n",LCL);
CL=P1;
mprintf("\CL = %.2f \n",CL);
//The individual control limits for the 3rd day
//Control limits for p-chart
mprintf("The individual control limits for the 3rd day");
n=900;
mprintf("\Again for \nP1 = %.4f \n",P1);
UCL=P1+3*sqrt((P1*(1-P1))/n);
mprintf("\UCL = %.2f \n",UCL);
LCL=P1-3*sqrt((P1*(1-P1))/n);
mprintf("\LCL = %.4f \n",LCL);
CL=P1;
mprintf("\CL = %.2f \n",CL);
//The individual control limits for the 6th day
//Control limits for p-chart
mprintf("The individual control limits for the 6th day");
n=2000;
mprintf("\Again for \nP1 = %.4f \n",P1);
UCL=P1+3*sqrt((P1*(1-P1))/n);
mprintf("\UCL = %.2f \n",UCL);
LCL=P1-3*sqrt((P1*(1-P1))/n);
mprintf("\LCL = %.4f \n",LCL);
CL=P1;
mprintf("\CL = %.2f \n",CL);
