clc
//Initialization of variables
c=1*10^-6 //m
K=1.754*10^-5 //m
Kp=1.008*10^-14 //m^2
//calculations
mH=c
//Iteration 1
mOH=Kp/mH
mA=mH-mOH
mHA=mH*mA/K
mH2=mH-mHA+mOH
//Iteration 2
mOH2=Kp/mH2
mA2=mH2-mOH2
mHA2=mH2*mA2/K
mH3=mH2-mHA2+mOH2
//From x2
x2=sqrt(Kp)
x1=c
mOH3=Kp/x2
y2=x1
//From x1
mOH4=Kp/c
mA4=mH-mOH4
mHA4=mH*mA4/K
y1=c-mHA4-mA4
//upon further iterations, we get
mHplus=mH3
//results
printf("Concentration of H plus ions = %.2e m",mHplus)
//The answer is a bit different due to rounding off error.
