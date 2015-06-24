clc;
warning("off");
printf("\n\n example15.4 - pg775");
// given
a=[10 20 50 100 200 400 600 1000 2000];
tau=[2.24 3.10 4.35 5.77 7.50 9.13 11.0 13.52 16.40]
tau=tau*10^-4;
clf;
xtitle("capillary shear diagram for a commercial polyethylene melt at 190 degC","pseudoshear rate","wall shear stress");
plot2d("ll",a,tau);
// such a plot suggests a second order polynomila  of the type y=betao+beta1*x+beta2*x^2;
// where y=ln(tauw) and x=ln(8*Uz,avg/do)=ln(a);
// from the graph
betao=8.96694;
beta1=0.48452520;
beta2=0.010923041;
n=beta1+2*beta2*a;
phiw=((3*n+1)/(4*n))*(a);
mu=tau/phiw;
printf("\n\n 8*Uz,avg/do       n       (3*n+1)/(4*n)       phiw            mu");
for i=1:9
    printf("\n %f       %f      %f      %f       %f",a(i),n(i),(3*n(i)+1)/(4*n(i)),phiw(i),mu);
end


