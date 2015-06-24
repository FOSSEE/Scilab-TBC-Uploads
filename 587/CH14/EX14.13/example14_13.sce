clear;
clc;

//Example14.13[Heat Loss from Uncovered Hot Water Baths]
//Given:-
Ts=50+273;//Uniform temperature of water[K]
T_surr=20+273;//Average temperature of surrounding surfaces[K]
T_inf=25+273;//Ambient temperature[K]
As=3.5*1;//Surface area of water bath[m^2]
p=2*(3.5+1);//Perimeter of top surface of water bath[m]
e=0.95;//Emissivity of liquid water
phi=0.52;//Relative Humidity
Rv=0.4615;//Universal Gas Constant[kPa.m^3/kg.K]
Ra=0.287;//Universal Gas Constant[kPa.m^3/kg.K]
g=9.81;//[m^2/s]
//solution:-
//(a)
Q_rad=e*As*(5.67*10^(-8))*((Ts^4)-(T_surr^4));
disp("W",round(Q_rad),"The radiation heat loss from the water to the surrounding surface is")
//(b)
Tavg=(Ts+T_inf)/2;//Average temperature[degree Celcius]
P=92;//Atmospheric pressure[kPa]
//At average temperature Tavg and Pressure P,Properties of dry air:-
k=0.02644;//[W/m.degree Celcius]
Pr=0.7262;//Prandtl  number, independent of pressure
a=(2.312*10^(-5))/P;//Absorptivity[m^2/s]
nu=(1.849*10^(-5));//Kinematic viscosity[m^2/s]
//At T_surr properties of water are:-
h_fg=2383;//[kJ/kg]
Pvs=12.35;//[kPa]
Psat=3.17;//Saturation Pressure of water at surface temp[kPa]
//The air at surface is saturated therefore vapor pressure at surface is simple the saturation pressure of water at the surface temperature
Pv_inf=phi*Psat;//[kPa]
//At the surface
rho_vs=Pvs/(Rv*Ts);
disp("kg/m^3",rho_vs,"Density of water vapor at the surface is")
rho_as=(P-Pvs)/(Ra*Ts);
disp("kg/m^3",rho_as,"Density of air at the surface is")
rho_s=rho_vs+rho_as;
disp("kg/m^3",rho_s,"Density of mixture at the surface is")
//Away from the surface
rho_vinf=Pv_inf/(Rv*T_inf);
disp("kg/m^3",rho_vinf,"Density of vapor away from the surface is")
rho_ainf=(P-Pv_inf)/(Ra*T_inf);
disp("kg/m^3",rho_ainf,"Density of air away from the surface is")
rho_inf=rho_ainf+rho_vinf;
disp("kg/m^3",rho_inf,"The density of mixture away from the surface is")
Lc=As/p;
disp("m",Lc,"The characteristic length is")
Gr=g*(rho_inf-rho_s)*(Lc^3)/(((rho_inf+rho_s)/2)*(nu^2));
disp(Gr,"The Grashof number is")
Nu=0.15*((Gr*Pr)^(1/3));
disp(Nu,"The Nusselt number is")
h_conv=Nu*k/Lc;
disp("W/m^2.degree Celcius",h_conv,"The convection heat transfer coefficient is")
Q_conv=h_conv*As*(Ts-T_inf);
disp("W",ceil(Q_conv),"The natural convection heat transfer rate is")
//(c)
D_AB=(1.87*10^(-10))*(Tavg^2.072)/(P/101.325);
disp("m^2/s",D_AB,"The mass diffusivity of water vapor in air at the average temperature is")
Sc=nu/D_AB;
disp(Sc,"The Schmidt Number is")
Sh=0.15*((Gr*Sc)^(1/3));
disp(Sh,"The Sherwood Number is")
h_mass=Sh*D_AB/Lc;
disp("m/s",h_mass,"The mass transfer coefficient is")
mv=h_mass*As*(rho_vs-rho_vinf);
disp("kg/s",mv,"The evaporation rate is")
Q_evap=mv*h_fg;
disp("kW",Q_evap,"The rate of heat transfer by evaporation is")
Q_total=Q_rad+Q_conv+1000*Q_evap;
disp("W",Q_total,"The total rate of heat transfer from the water to the surrounding air and surfaces is")