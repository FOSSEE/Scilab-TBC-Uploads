clear;
clc;

l=336;
h1=33.6;
h2=29;
w=8.33;
T=3.34e4;

//(a)
lc=l+ (2*T * (h1-h2)/(w*l));
S=w*lc*lc/(8*T);
cl= h1-S;
mprintf("\n (a)Clearance= %.3f m", cl);

//(b)
d1=lc/2;
d2=l-d1;
mprintf("\n (b)Distance of point O from lower support = %.2f m", d2);
