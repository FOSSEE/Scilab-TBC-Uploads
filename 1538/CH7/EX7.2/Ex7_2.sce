//example-7.2
//page no-209
//given
//activation energy and constant D0 are given as
//for notation only we are using D01 and D02
Q1=83*10^3  //J/mol
Q2=157*10^3  //J/mol
D01=8*10^-7  //m^2/s
D02=700*10^-7  //m^2/s
//diffusivity of carbon in alpha-iron at 873 K (600+273) can be obtained by the equation
T=873  //K
//and 
//gas constant
R=8.314  //J/mol K
Dx=D01*exp(-Q1/R/T)  //m^2/s
//concentration of carbon is given as 0.75% , therefore concentration of steel will be 0.25 %. thus
Ms=0.25  //conc. of steel
Mc=0.75  //conc. of carbon
//time of carburization is 9 hrs
t=9*3600  //sec
//so 
C1=Mc
C2=C1-Ms
//carbon content on the surface
M=0.6
//we know that diffusion across a common interface is obtained by:-
//M=C1-C2*erf(x/2*sqrt(Dx/t))
//solving for X where X=erf(x/2*sqrt(Dx/t))
X=((C1-M)/C2)
//now for x
x=erfinv(X)*2*sqrt(Dx*t)*10^4   //m
printf ("depth of carburization is %f m",x) 
