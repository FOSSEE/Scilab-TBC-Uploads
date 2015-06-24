//example-7.5
//page no-215
//given
Mx=10^22  //atoms/m^3
M0=10^24  //atoms/m^3
t=3*3600  //sec
T=1100+273  //K
D=7*10^-17   //m^2/s
//boundary cinditions are
//M(x,0)=0 for x>0 at t=0
//M(0,t)=10^24 atoms/m^3
//M(x,t)=C1-C2*erf(x/22/sqrt(D*t))
//putting boundary conditions in the above equation
//we get 
C1=10^24  //atoms/m^3
C2=10^24  //atoms/m^3
//solving for x
//now for x we have
x=erfinv((C1-Mx)/C2)*2*sqrt(D*t)*10^3   //mm
printf ("depth below the surface at which the concentration is 10^22 atoms/m^3 is %f mm",x)
