clear;
clc;

h1=55;
h2=50;
l=300;
g=9.81;
T=2000*g;
m=.85;
w=m*g;

//(a)
lc=l+ (2*T * (h1-h2)/(w*l));
S= w * lc *lc /(8*T);
cl=h1-S;
mprintf("\n (a)Minimum Clearance between conductor and water= %.2f m", cl);

//(b)
dOB=lc/2;
dOA=l-dOB;
mprintf("\n (b)Distance of point O from lower support= %.1f m", dOA);
