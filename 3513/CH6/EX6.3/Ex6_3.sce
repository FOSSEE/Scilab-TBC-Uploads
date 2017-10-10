//Compute percentage of the product will not meet the specification
//page no 107
clear
clc;
//a
UCL=129;
LCL=121;
X1=125;
CL=X1;
USL=135;
LSL=121;
A2 = 0.73;
d2 = 2.059;
D3 = 0.0;
D4 = 2.28;
R2=(UCL-X1)/A2;
mprintf("\nR2 = %.2f ",R2);
sd=R2/d2;
PC=6*sd;
UNTL = X1 + 3*sd;
LNTL = X1 + 3*sd;
Z=(LSL-CL)/sd   //Percentage of rejection
mprintf("\nPercentage of rejection = %.2f ",Z);
mprintf("\n a) Probability from table 0.0122 = 1.22 ");
Z=(LSL-127)/sd   //Percentage of rejection
mprintf("\nPercentage of rejection = %.2f ",Z);
mprintf("\n b) Probability from table 0.00135 = 0.135 ");
TR=0.135*2;
mprintf("\n c)Since it is symmetric the total percentage of rejection = %.2f ",TR);
