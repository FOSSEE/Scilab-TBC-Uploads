clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 8.5   Page 509 \n'); //Example 8.5
// Length of Blood Vessel

//Operating Conditions
um1 = .13;            //[m/s] Blood stream
um2 = 3*10^-3;            //[m/s] Blood stream
um3 = .7*10^-3;            //[m/s] Blood stream
D1 = .003;           //[m] Diameter
D2 = .02*10^-3;           //[m] Diameter
D3 =  .008*10^-3;           //[m] Diameter
Tlm = .05;
kf = .5;           //[W/m.K] Conductivity
//Table A. Water Properties T = 310 K
rho = 993;         //[kg/m^3] density
cp = 4178;          //[J/kg.K] specific heat
u = 695*10^-6;      //[N.s/m^2] Viscosity
kb = .628;           //[W/m.K] Conductivity
Pr = 4.62;          //Prandtl Number
i=1;
//Using equation 8.6
    Re1 = rho*um1*D1/u;
    Nu = 4;
    hb = Nu*kb/D1;
    hf = kf/D1;
    U1 = (1/hb + 1/hf)^-1;
    L1 = -rho*um1*D1/U1*cp*2.303*log10(Tlm)/4;
    xfdh1 = .05*Re1*D1;
    xfdr1 = xfdh1*Pr;
    
    Re2 = rho*um2*D2/u;
    Nu = 4;
    hb = Nu*kb/D2;
    hf = kf/D2;
    U2 = (1/hb + 1/hf)^-1;
    L2 = -rho*um2*D2/U2*cp*2.303*log10(Tlm)/4;
    xfdh2 = .05*Re2*D2;
    xfdr2 = xfdh2*Pr;
    
    Re3 = rho*um3*D3/u;
    Nu = 4;
    hb = Nu*kb/D3;
    hf = kf/D3;
    U3 = (1/hb + 1/hf)^-1;
    L3 = -rho*um3*D3/U3*cp*2.303*log10(Tlm)/4;
    xfdh3 = .05*Re3*D3;
    xfdr3 = xfdh3*Pr;

printf("\n Vessel          Re       U(W/m^2.K)    L(m)     xfdh(m)    xfdr(m)\n Artery          %i       %i         %.1f         %.2f      %.1f \n Anteriole       %.3f    %i    %.1e    %.1e    %.1e \n Capillary       %.3f    %i    %.1e    %.1e    %.1e",Re1,U1,L1,xfdh1,xfdr1,Re2,U2,L2,xfdh2,xfdr2,Re3,U3,L3,xfdh3,xfdr3);

//END