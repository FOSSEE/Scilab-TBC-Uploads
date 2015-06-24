clc;
warning("off");
printf("\n\n example12.14 - pg616");
// given
T=842;  //[degF] - temperature
P=14.6;  //[psia] - pressure
p=0.487;  //[kg/m^3] - density of air
mu=3.431*10^-5;  //[kg/m*sec] - viscosity of air
k=0.05379;  //[W/m*K] - thermal conductivity
Npr=0.7025;  //prandtl no.
// (a) static void fraction
mcoal=15*2000; //[lb] - mass of coal
pcoal=94;  //[lbm/ft^3] - density of coal
d=10;  //[ft]
L=7;  //[ft]
area=((%pi*(d^2))/4);
Vcoal=mcoal/pcoal;
Vtotal=area*L;
e=(Vtotal-Vcoal)/(Vtotal);
disp(e,"(a) The void fraction is E=");
// (b) minimum void fraction and bed height
d=200;  //[um] - particle diameter
Emf=1-0.356*((log10(d))-1);
// this value seems to be a lottle low and therefore 0.58 will be used
Emf=0.58;
Lmf=((L)*(1-e))/(1-Emf);
printf("\n\n (b) The bed height is \n Lmf = %f ft",Lmf);
// (c) Minimum fluidization velocity
P1=20;  //[psia]
P2=14.696;  //[psia]
p1=(p*P1)/(P2);
// the archimides no. is
g=9.78;  //[m/sec^2]
Nar=p1*g*((d*10^-6)^3)*(1506-p1)*((1/(mu)^2));
C1=27.2;
C2=0.0408;
Nremf=(((C1^2)+C2*Nar)^(1/2))-C1;
Umf=(Nremf*mu)/((d*10^-6)*p1);
printf("\n\n (c) The minimum fluidization velocity is \n Umf = %f m/sec",Umf);
// (d) Minimum pressure
deltapmf=(1506-p1)*(g)*(1-Emf)*((Lmf*12*2.54)/(100))+p1*g*Lmf;
printf("\n\n (c) The minimum pressure drop for fluidization is \n -deltapmf = %e Pa",deltapmf);
// (e) Particle settling velocity
Cd=0.44;
Ut=(((8*((d*10^-6)/2)*g)*(1506-p1))/(3*p1*Cd))^(1/2);
Nrep=(Ut*d*10^-6*p1)/(mu);
disp(Nrep,"Nrep=");
// clearly at the point of minimum velocity for fast fluidization , the terminal settling velocity is not in the range of Newtons law.Therefore the eq. for the transition region will be tried
Ut=((5.923/18.5)*(((d*10^-6)*p1)/(mu))^(0.6))^(1/(2-0.6))
printf("\n\n (e) The particle settling velocity is \n Ut = %f m/sec",Ut);
// (f) Bed to wall heat transfer coefficient
Nrefb=(d*10^-6)*2.5*Umf*p1*(1/mu);
Nnufb=0.6*Npr*((Nrefb)^(0.3));
hw=Nnufb*(k/(d*10^-6));
printf("\n\n (f) The bed to wall heat transfer coefficient is \n hw = %f W/m^2*K",hw);








