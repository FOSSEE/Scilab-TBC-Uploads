clc;
warning("off");
printf("\n\n example12.5 - pg618");
// given
pp=249.6;  //[lb/ft^3] - density of catalyst
p=58;  //[lb/ft^3] - density of liquid
g=32.174;  //[ft/sec^2]
gc=32.174;
Lmf=5;  //[ft] - height of bed
mu=6.72*10^-3;  //[lbm/ft*sec] - viscosity of liquid
dp=0.0157/12;  //[ft] - diameter of particle
emf=0.45;
deltapmf=(pp-p)*(g/gc)*(1-emf)*(Lmf);
Nar=(p*g*dp^3)*(pp-p)*(1/(mu)^2);
C1=27.2;
C2=0.0408;
Nremf=(((C1^2)+C2*Nar)^(1/2))-C1;
Umf=Nremf*(mu/(dp*p));
printf("\n\n Minimum fluidization velocity is \n Umf = %e ft/sec",Umf);

