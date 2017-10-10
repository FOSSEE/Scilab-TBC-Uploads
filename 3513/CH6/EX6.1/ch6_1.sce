// percentage of rework
//page no 103
clear
clc;
x=41.283;
r=0.280;
k=20;
ucl=2.07;        //Upper specification limit USL
lcl=2.03 ;       //Lower specification limit LSL
A2 = 0.73;
d2 = 2.059;
D3 = 0.0;
D4 = 2.28;
X1=x/k;
R1=r/k;

//a) Control limit for R – chart
ucl1 = D4*R1;
lcl1 = D3*R1;
cl1=R1;
mprintf("\nControl limit for R – chart\n ucl = %.2f ",ucl1);
mprintf("\nlcl = %.2f ",lcl1);
mprintf("\nCL = %.2f ",cl1);
//Control limits for X – chart
ucl2=X1+A2*R1;
lcl2=2.05393;
cl2=X1;
mprintf("\nControl limit for X – chart\n ucl = %.2f ",ucl2);
mprintf("\nlcl = %.2f ",lcl2);
mprintf("\nCL = %.2f ",cl2);

//(b) Process Capability
cl3=X1;
sd=R1/d2;
pc=6*sd
mprintf("\n Process Capability = %.2f ",pc);

//(d) UNTL (upper natural tolerance limit)
UNTL = X1 + 3*sd;
LNTL = X1 - 3*sd;
USL = 2.07;
LSL = 2.03;
z=(USL-X1)/sd
p=0.8051*100    //The probability from the tables for z
rw=100-p;
mprintf("\n Therefore the rework is = %.2f percent]",rw);


