clc;
warning("off");
printf("\n\n example12.17 - pg630");
// given
dt=0.75;
St=1.5*dt;
Sl=3*dt;
Lw=1;  //[m]
N=12;
Stotalarea=N*(St/12)*Lw;
Sminarea=N*((St-dt)/12)*Lw*0.3048;
// properties of air at 293.15 K
p=1.204;  //[kg/m^3]
mu=1.818*10^-5;  //[kg/m*s]
cp=1005;  //[J*kg/K];
k=0.02560;  //[J/s*m*K]
Npr=(cp*mu)/k;
U_inf=7;  //[m/sec]
Umax=U_inf*(St/(St-dt));
w=p*Umax*Sminarea;
C_tubes=0.05983;  //[m^2/m] - circumference of the tubes
N_tubes=96;
Atubes=N_tubes*C_tubes*Lw;
Tw=328.15;  //[K]
Tinf=293.15; //[K]
Tin=293.15;  //[K]
Tout=293.15;  //[K]
u=100;
while u>10^-1
    T=(Tin+Tout)/2
    Told=Tout;
    p=-(0.208*(10^-3))+(353.044/T);
    mu=-(9.810*(10^-6))+(1.6347*(10^-6)*(T^(1/2)));
    cp=989.85+(0.05*T);
    k=0.003975+7.378*(10^-5)*T;
    Npr=(cp*mu)/k;
    dt=0.75*0.0254;
    Gmax=w/Sminarea;
    Nre=(dt*Gmax)/mu;
    h=0.27*(k/dt)*(Npr^0.36)*(Nre^0.63);
    h=h*0.98;
    deltaT=(h*Atubes*(Tw-Tinf))/(w*cp);
    Tout=Tin+deltaT;
    u=abs(Tout-Told);
end
T=(Tin+Tout)/2
p=-(0.208*(10^-3))+(353.044/T);
mu=-(9.810*(10^-6))+(1.6347*(10^-6)*(T^(1/2)));
dt=0.75;
dv=(4*(St*Sl-(%pi*(dt^2)*(1/4))))/(%pi*dt)*(0.09010/3.547);
de=dv;
Nre=(dv*24.72)/mu;
dv=dv/(0.09010/3.547);
ftb=1.92*(Nre^(-0.145));
Zt=Sl;
Ltb=8*Sl;
deltap=(ftb*(24.72^2))/(2*p*(dv/Ltb)*((St/dv)^0.4)*((St/Zt)^0.6));
printf("\n\n -deltap = %f kg/m*s = %f N/m^2 = %f psia",deltap,deltap,deltap*(0.1614/1113));




