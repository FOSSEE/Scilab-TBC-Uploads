clc;
warning("off");
printf("\n\n example10.16 - pg470");
// given
Q=400;  //[gpm]
p=1.1*62.4;  //[lbm/ft^3]
mu=2*(6.72*10^-4);  //[lb/ft*sec]
e=1.5*10^4;
// 4 inch schedule pipe
d=0.3355;
S=(%pi*(d^2))/4;
U4=Q/39.6;
ebyd=e/d;
w=3671/60;
pm=13.45*62.4;
g=32.1;
gc=32.174;
Nre=(d*U4*p)/mu;
if Nre>10^4 then
    c=0.98;
end
deltaz=2.5;
deltap=(g/gc)*(pm-p)*(deltaz);
betaa=((1)/(1+[(2*p*gc)*(deltap)]*(((c*S)/w)^2)))^(1/4);
d2=betaa*d;
printf("\n\n The pertinentr details of the venturi design are\n Throat diameter = %f inch\n Approach angle = 25\n Divergence angle = 7",d2*12);

