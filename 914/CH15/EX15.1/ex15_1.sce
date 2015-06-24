clc;
warning("off");
printf("\n\n example15.1 - pg760");
// given
r=[10 20 50 100 200 400 600 1000 2000]
tau=[2.2 3.1 4.4 5.8 7.4 9.8 11.1 13.9 17.0]
tau=tau*(10^-4);
clf;
xtitle("basic shear diagram for the fluid","shear rate","shear stress");
plot2d("ll",r,tau);
// the data falls nearly on a straight line
// from the graph the slope and the intercept are
slope=0.3841;
intercept=9.17046;
// from the relation tau=K*(-r)^n;
K=exp(intercept);
n=slope
disp(K,"K=",n,"n=");
printf("\n\n The fluid is pseudo plastic , since the slope is less than 1 ");

