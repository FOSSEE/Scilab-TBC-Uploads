clc;
warning("off");
printf("\n\n example7.11 - pg300");
// given
sp=1.45;  // specific gravity of trichloroethylene
pwater=62.4;  //[lb/ft^3] - density of water
p=sp*pwater;
d1=1.049;  //[inch] - density of pipe at point 1
d2=0.6;  //[inch] - density of pipe at point 2
d3=1.049;  //[inch] - density of pipe at point 3
// using the formula U1*S1=U2*S2; we get U1=U2*(d2/d1);
// then using the bernoulli equation deltap/p=(1/2)*(U2^2-U1^2);
deltap=4.2*(144);  //[lb/ft^2] - pressure difference
U2=((2*(deltap/p)*(1/(1-(d2/d1)^4)))^(1/2))*(32.174)^(1/2);
// using the formula w=p*U2*S
w=p*U2*((%pi/4)*(0.6/12)^2);
w1=w/(2.20462);
printf("\n\n the mass flow rate is \n w=%flb/sec\n or in SI units \n w=%fkg/sec",w,w1);

