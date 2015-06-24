//example-7.3
//page no-211
//given
//temp
T=950+273  //K
QA1=83*10^3   //J/mole
QA2=157*10^3  //J/mole
R=8.314
D01=0.008*10^-4  //m^2/s
D02=0.7*10^-4  //m^2/s
Ms=0.8  //%
Mc=0  //%
Mx=0.6  //%
t=4*3600  //sec
D=1.38*10^-11  //m^2/s 
//diffusivity at 950 degrees celcius
Dx=D01*exp(-QA2/R/T)   //m^2/s
//now we use fick's solution which is given by
//M(x,t)=C1-C2*erf(x/2/sqrt(Dt))
//first boundary condition is 
//M(x,0)=0.8 for x<0
//on solving we get
//C1+C2=0.8
//second boundary condition is 
//M(0,t)=0
//so we get
//C1-C2=0
//therefore we get
C1=0
C2=0.8
//so we get x as
x=erfinv((C1-Mx)/C2)*2*sqrt(D*t)
printf ("post machining is to be done upto %f mm",x)
