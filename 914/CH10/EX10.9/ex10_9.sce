clc;
warning("off");
printf("\n\n example10.9 - pg443");
// given
L1=50;  //[m] - length of first pipe
L2=150;  //[m] - length of second pipe
L3=100;  //[m] - length of third pipe
d1=0.04;  //[m] - diameter of first pipe
d2=0.06;  //[m] - diameter of second pipe
d3=0.08;  //[m] - diameter of third pipe
deltap=-1.47*10^5;  //[kg/m*sec] - pressure drop
mu=1*10^-3;  //[kg/m*sec] - viscosity
p=1000;  //[kg/m^3] - density
// for branch 1
S=(%pi*(d1^2))/4;
Nvk=((d1*p)/mu)*(-(d1*deltap)/(2*L1*p))^(1/2);
f=(1/(4*log10(Nvk)-0.4))^2;
U=(((-deltap)/p)*(d1/L1)*(2/4)*(1/f))^(1/2);
w1=p*U*S;
printf("\n\n For first branch w1=%f kg/sec",w1);
// for branch 2
S=(%pi*(d2^2))/4;
Nvk=((d2*p)/mu)*(-(d2*deltap)/(2*L2*p))^(1/2);
f=(1/(4*log10(Nvk)-0.4))^2;
U=(((-deltap)/p)*(d2/L2)*(2/4)*(1/f))^(1/2);
w2=p*U*S;
printf("\n\n For second branch w2=%f kg/sec",w2);
// for branch 3
S=(%pi*(d3^2))/4;
Nvk=((d3*p)/mu)*(-(d3*deltap)/(2*L3*p))^(1/2);
f=(1/(4*log10(Nvk)-0.4))^2;
U=(((-deltap)/p)*(d3/L3)*(2/4)*(1/f))^(1/2);
w3=p*U*S;
printf("\n\n For third branch w3=%f kg/sec",w3);
// total flow rate w=w1+w2+w3
w=w1+w2+w3;
printf("\n\n total flow rate is w=%f kg/sec",w);
