//Compute the control limits
//page no 105
clear
clc;
K = 25;
n = 5;
X1 = 357.5;
R1 = 8.8;
USL=14.8;
LSL= 14.0;
X2=X1/K;
R2=R1/K;
A2 = 0.58;
d2 = 2.326;
d3 = 0.0;
D4 = 2.11;
//Control limits for R-chart
UCLR = D4*R2;
LCL = d3*R2;
CL = R2;
//(a) Control limits for X -chart.
UCL = X2 + A2*R2;
mprintf("\nControl limit for X – chart\n ucl = %.2f ",UCL);
LCL = X2 - A2*R2;
mprintf("\nControl limit for X – chart\n lcl = %.2f ",LCL);
CL = X2
mprintf("\nControl limit for X – chart\n cl = %.2f ",CL);

//(b) Since the process is in a state of statistical control
X21=14.3;
sd=R2/d2;
pc=sd*6;
mprintf("\nProcess capability = %.2f ",pc);

//(c)
mprintf("\nSince 6σ1 > (USL – LSL), the process is not capable of meeting the specification limits. i.e., 0.907 > 0.8. Rejections are inevitable");
UNTL = X21 + 3*sd;
LNTL = X21 - 3*sd;
CL = X21;
X=14;
Z=(X-X21)/sd;
p = 0.0239*100    //=Probability from tables
mprintf("\nPercentage of rejection = %.2f ",p);
//(e) To minimise the percentage of rejection the possible ways are : change the process
//centre to the specification mean i.e., 14.3 to 14.4. The calculations are shown
//below.
X21=14.4;           // To minimise the percentage of rejection
Z=(X-X21)/sd;
p = 0.0041*100    //=Probability from tables
mprintf("\nPercentage of rejection = %.2f ",p);
