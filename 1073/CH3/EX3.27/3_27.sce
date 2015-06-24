clc;
clear;
//Example 3.27

m_dot=0.217 //Water flow rate in [kg/s]
Do=19   //Outside diameter in [mm]
rho=1000    //Density
t=1.6   //Wall thickness in [mm]
Di=Do-2*t   //i.d of tube in [mm]
Di=Di/1000  //[m]
Do=Do/1000  //[m]
Ai=%pi*(Di/2)^2 //Cross-sectional area in sq m
u=m_dot/(rho*Ai)  //Water velocity through tube  [m/s]
u=1.12  //approx in book
Di=0.0157   //apprx in book
T1=301  //Inlet temperature of water in [K]
T2=315  //Outlet temperature of water in [K]
T=(T1+T2)/2 //[K]
hi=(1063*(1+0.00293*T)*(u^0.8))/(Di^0.20) //Inside heat transfer coefficient W/(sq m.K)
hi=5084     //Approximation
printf("%f",hi);
hio=hi*(Di/Do)  //Inside heat transfer coeff based on outside diameter  in W/(sq m.K)
printf("%f",hio);
printf("Based on outside temperature,Inside heat transfer coefficient is  %d W/(m^2.K) or %f kW/(m^2.K)",round(hio),round(hio)/1000);

