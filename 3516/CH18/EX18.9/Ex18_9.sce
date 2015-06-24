printf("\t example 18.9 \n");
G=60; // lb/(hr)*(ft^2)
De=1/12; // ft
theta=6; // hr
cs=41.3; // Btu/(ft^3)*(F)
c=0.0191; // Btu/(ft^3)*(F)
f=0.45; // void fraction
T=90;
T1=200;
t0=50;
h=(0.79*(G/De)^0.7); // eq 18.90
printf("\t h is : %.1f \n",h);
X=(h*theta/(cs*(1-f)));
Y=(T-t0)/(T1-t0);
printf("\t X is : %.0f \n",X);
printf("\t Y is : %.3f \n",Y);
row=0.0807; // lb/(ft^3) air
Z=24.5; // Z=(h*x*row/(c*G)), by comparing X an Y in fig 18.21
x=24.5*(c*G/(h*row));
printf("\t x is : %.1f ft \n",x);
// end
