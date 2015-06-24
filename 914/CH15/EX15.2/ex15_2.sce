clc;
warning("off");
printf("\n\n example15.2 - pg774");
// given
a=[651 1361 2086 5089 7575 11140 19270 25030]
tau=[3.71 7.49 11.41 24.08 -35.21 46.25 77.50 96.68]
clf;
xtitle("capillary shear diagram for polyisobutylene L-80 in cyclohexane","pseudoshear rate","wall shear stress");
plot2d("ll",a,tau);
// from the graph
betao=-4.3790154;
beta1=0.8851;
K'=exp(betao);
n'=beta1;
printf("\n\n The final rheological model is \n tauw = %f*(8*Uz,avg/do)^%f",K',n');

