clc;
warning('off');
printf("\n\n example3.2 - pg68");
// given
syms x;
SIx2=-3.8*10^5;  //[j*m^-2*sec^-1] - flux at x=0.1,i.e through face2
Qgen=1.5*10^6;  //[j*m^-3*sec^-1] - uniform generation in the volume
T2=100+273.15;  //[K] temperature at face 2
x2=0.1;  //[m]
k=380;  //[W/mK] - thermal conductivity
// using the equation der(SIx)*x=SIx+c1;where c1 is tyhe constant of integration
c1=(Qgen*x2)-SIx2;
disp(c1)
SIx=Qgen*x-c1;
disp(SIx,"SIx=");
printf("\n where SIx is in units of j m^-2 sec^-1 and x is in units of m");
// using the equation -k*T=der(SIx)*x^2-c1*x+c2;where c2 is the constant of integration
c2=-k*T2-(Qgen*(x2)^2)/2+c1*x2;
T=-(Qgen/k)*x^2+(c1/k)*x-(c2/k);
disp(T,"T=");
printf("\n where T is in units of kelvin(K)");


