//example-7.4
//page no-213
//given
D0=0.002*10^-6  //m^2/s
Q=120*10^3  //J/mol
T=550+273  //K
//the condition for diffusion are
//M(x,0)=4% for x>0
//M(x,0)=0% for x<0
x=(0.25-0.10)*10^-3  //m
Mx=0.4  //%
R=8.314 //gas constant
//diffusion at 550 degrees celcius is
Dx=D0*exp(-Q/R/T)  //m^2/s
//by using
//M(x,t)=C1-C2*erf(x/2/sqrt(Dx*t))
//putting boundary conditions in above equation we get
C1=2   //%
C2=2  //%
//solving for t
//we get
t=(erfinv((C1-Mx)/C2)*2*sqrt(Dx)/x)^-2 //sec
printf ("the duration for which he material is kept at 550 degrees celcius is %e sec",t)
