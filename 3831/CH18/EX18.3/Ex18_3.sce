// Example 18_3
clc;funcprot(0);
// Given data
T=273;// K
m=3.35*10^-26;// kg
k=1.38*10^-23;// J/(molecule.K)

// Calculation
// (a) The fraction having velocities greater than Vmp is given by Eq. (18.26) with x = Vmp/Vmp = 1.0
x=1.00;// The velocity ratio
NV_mpbyN=1-erf(x)+((2/sqrt(%pi))*x*exp(-(x^2)));// The fraction of molecules whose velocities lie in the range from V to infinity
// (b)
x=sqrt(8/(2*%pi));// The velocity ratio
NV_avgbyN=1-erf(x)+((2/sqrt(%pi))*x*exp(-(x^2)));// The fraction of molecules whose velocities lie in the range from V to infinity
// (c)
// x=V_rms/V_mp;
x=sqrt(3/2);// The velocity ratio
NV_rmsbyN=1-erf(x)+((2/sqrt(%pi))*x*exp(-(x^2)));// The fraction of molecules whose velocities lie in the range from V to infinity
// (d)
x=10.0;// The velocity ratio
NVbyN=((2/sqrt(%pi))*x*exp(-(x^2)));// The fraction of molecules whose velocities lie in the range from V to infinity
c=3.00*10^8;// m/s
V_mp=sqrt((2*k*T)/m);// m/s
x=c/V_mp;// The velocity ratio
NcbyN=((2/sqrt(%pi))*x*exp(-(x^2)));// The fraction of molecules whose velocities lie in the range from c to infinity
printf("\n(a)%2.2f percentage of the molecules have velocities faster than V_mp. \n(b)%2.2f percentage of the molecules have velocities faster than V_avg. \n(c)%2.2f percentage of the molecules have velocities faster than V_rms. \n(d)The fraction of molecules whose velocities lie in the range from c to infinity is %0.0f.",NV_mpbyN*100,NV_avgbyN*100,NV_rmsbyN*100,NcbyN*100);
