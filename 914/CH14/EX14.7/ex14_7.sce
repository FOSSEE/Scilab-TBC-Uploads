clc;
warning("off");
printf("\n\n example14.7 - pg736");
// given
beta0=-6.301289;
beta1=1853.374;
clf;
xtitle("Temperature variation of the viscosity of water","(1/T)*10^3,K^-1","viscosity,cP");
x=[2.2,0.2,3.8]';
y=[(beta0+beta1*x)];
plot2d(x,y);
// at T=420;
T=420;  //[K]
x=1/T;
y=beta0+beta1*x;
mu=exp(y);
printf("\n\n mu=%fcP",mu);
printf("\n\n The error is seen to be 18 percent.AT midrange 320(K), the error is approximately 4 percent");


