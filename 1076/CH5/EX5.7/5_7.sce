clear;
clc;

l=600;
wc=12;
wi=14;
T=50000;

//(a)
F=wc+wi;
S= F * l * l/ (8*T);
mprintf("\n (a)Sag when representing line as a parabola= %.1f m", S);

//(b)
S=(F * l * l/ (8*T)) * (1+ ((l*l/48)*(F *F/(T*T))));
mprintf("\n (b)Sag when representing line as a catenary= %.3f m", S);
