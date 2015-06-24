clc;
warning("off");
printf("\n\n example6.9 - pg258");
// given
spg=0.84;
p=0.84*62.4;  //[lbf/ft^3] - density
dP=80*144;  //[lbf/ft^2] - pressure
dz=2000;  //[ft] - length of pipe
gc=32.174;  //[(lbm*ft)/(lbf*sec^2)] - gravitational conversion constant
dpbydz=-dP/dz;
do=2.067/12;  //[ft]
U=2000*(1/24)*(1/3600)*(42)*(1/7.48)*(1/0.02330);
// using the formula f=((do/2)*(-dp/dz)*gc)/(p*(U)^2)
f=((do/2)*(-dpbydz)*gc)/(p*(U)^2)
disp(f,"f=");

