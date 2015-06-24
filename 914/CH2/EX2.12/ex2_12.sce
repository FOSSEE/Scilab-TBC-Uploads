clc;
warning('off');
printf("\n\n example2.12 - pg52");
// given
T=53+273.15;  //[K] - temperature
mu1=1.91*10^-5;
mu2=2.10*10^-5;
T1=313.15;  //[K] - temperature 
T2=347.15;  //[K] - temperature
// for air
// using linear interpolation of the values in table 2.2
function b=f(a)
    b=log(mu1/a)/log(T1);
endfunction
function y=g(a)
    y=log(mu2)-log(a)-f(a)*log(T2);
endfunction
a1=10^-7;
A=fsolve(a1,g);
B=f(A);
// using the formula ln(mu)=lnA+Bln(t)
mu=%e^(log(A)+B*log(T))*10^3;  //[cP]
printf("\n\n the viscosity of air at %fdegC is %fcP",T-273.15,mu);
// similarly for water
BdivR=1646;
A=3.336*10^-8;
mu=A*%e^(BdivR/T)*10^5 //[cP]
printf("\n\n the viscosity of water at %fdegC is %fcP",T-273.15,mu);