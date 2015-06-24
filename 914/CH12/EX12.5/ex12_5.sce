clc;
warning("off");
printf("\n\n example12.5 - pg576");
T=290;  //[K] - temperature of flowing water
U=3;  //[m/sec] - free stream velocity
Tfs=285;  //[K] - temperature of free stream
vr=10^-3;  //[m^3/kg] - volume per unit mass
p=1/vr;  //[kg/m^3] - density of water at Tfs
mu=1225*10^-6;  //[N*sec/m^2]
k=0.590;  //[W/m*K]
Npr=8.70;
//  (a) The length of laminar boundary
Nre=5*10^5;
xc=(Nre)*(mu/(p*U));
printf("\n\n (a) The length of laminar boundary is \n xc = %f m",xc);
//  (b) Thickness of the momentum boundary layer and thermal boundary layer
del=5*xc*((Nre)^(-1/2));
delh=del*((Npr)^(-1/3));
printf("\n\n (b) The thickness of momentum boundary layer is \n del = %e m\n The thickness of the hydryodynamic layer is \n delh = %e m",del,delh);
// (c) Local heat transfer coefficient
x=0.2042;  //[ft]
hx=((0.33206*k)/(x))*((Nre)^(1/2))*((Npr)^(1/3));
printf("\n\n (c) The local heat transfer coefficient is \n h = %f W/m^2*K = %f Btu/hr*ft^2*degF",hx,hx*0.17611);
// (d) Mean heat transfer coefficient
hm=2*hx;
printf("\n\n (d) The mean heat transfer coefficient is \n h = %f W/m^2*K = %f Btu/hr*ft^2*degF",hm,hm*0.17611);
