//Compute the control limits
//page no 109
clear
clc;
//(a)
X1=15350;
R1 = 411.4;
SR = 411.4
K = 25;
n = 4;
X2=X1/K;
R2=R1/K;
A2 = 0.73;
d2 = 2.059;
D3 = 0.0;
D4 = 2.28;
USL = X2 + A2*R1;
LCL = X2 - A2*R1;
CL=X2;
//Control limits for R-chart
UCL1 = D4*R1;
LCL1 = D3*R1;
CL1 = R1;
mprintf("\UCL = %.2f ",UCL1);
mprintf("\LCL = %.2f ",LCL1);
mprintf("\CL = %.2f ",CL1);
//(b) Specification limits are
USL = 625;
LCL = 595;
sd=R1/d2;
UNTL = X1 + 3*sd;
LNTL = X1 - 3*sd;
PC=6*sd;
mprintf("\Process capability = %.2f ",PC);
Z=(595-614)/sd;
mprintf("\nPercentage of rejection = %.2f ",Z);
mprintf("\n a) Probability from table 0.947 = 91.47 percent ");
mprintf("\n Rework = 8.53 percent ");
Z1=(625-618.97)/sd;
mprintf("\nPercentage of rejection = %.2f ",Z1);
mprintf("\n  Probability from table 0.7734 = 77.34 percent ");
mprintf("\n Rework = 22.66 percent ");





