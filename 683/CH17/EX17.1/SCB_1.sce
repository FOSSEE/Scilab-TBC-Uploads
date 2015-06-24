// sum 17-1
clc;
clear;
Ta=22;
u=7/10^9;
nj=20;
r=25;
l=2*r;
Ao=30000;
Uo=15.3/10^3;
c=0.025;
//specific weight of the material is rho
rho=8.46*(10^-6);
Cp=179.8;
Tf=Ta+(16*%pi^3*u*nj^2*l*r^3/(Uo*Ao*c));
// avg mean film temperature is Tav
Tav=(Tf-Ta)/2;
x= l*c*rho*%pi*r*nj*Cp*10^3;
y=Ao*Tav*Uo;
delT=y/x;

  // printing data in scilab o/p window
  printf("Tav is %0.2f degC ",Tav);
  printf("\n delT is %0.1f degC ",delT);