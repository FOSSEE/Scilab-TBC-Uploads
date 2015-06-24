clear;
clc;
printf("\t\t\tExample Number 10.1\n\n\n");
// overall heat transfer coefficient for pipe in air   
// Example 10.1 (page no.-520-522) 
// solution

Tw = 98;// [degree celsius] temperature of hot water 
k_p = 54;// [W/m degree celsius] heat transfer coefficient of pipe
Ta = 20;// [degree celsius] atmospheric air temperature
u = 0.25;// [m/s] water velocity
// from appendix A the dimensions of 2-in schedule 40 pipe are 
ID = 0.0525;// [m]
OD = 0.06033;// [m]
// the properties of water at 98 degree celsius are 
rho = 960;// [kg/cubic meter] 
mu = 2.82*10^(-4);// [kg/m s]
k_w = 0.68;// [W/m degree celsius]
Pr = 1.76;// prandtl number
// the reynolds number is 
Re = rho*u*ID/mu;
// and since turbulent flow is encountered, we may use equation(6-4):
Nu = 0.023*Re^(0.8)*Pr^(0.4);
hi = Nu*k_w/ID;// [W/square meter degree celsius]
// for unit length of pipe the thermal resistance of the steel is 
Rs = log(OD/ID)/(2*%pi*k_p);
// again, on a unit length basis the thermal resistance on the inside is 
Ai = %pi*ID;// [square meter]
Ri = 1/(hi*Ai);
Ao = %pi*OD;// [square meter]
// the thermal resistance for outer surface is as yet unknown but is written, for unit lengths, is  Ro = 1/(ho*Ao)              (a)
// from table 7-2(page no.-339), for laminar flow, the simplified relation for ho is 
// ho = 1.32*(dT/d)^(1/4) = 1.32*((To-Ta)/OD)^(1/4)                                                                              (b)
// where To is the unknown outside pipe surface temperature. we designate the inner pipe surface as Ti and the water temperature as Tw; then the energy balance requires 
// (Tw-Ti)/Ri = (Ti-To)/Rs = (To-Ta)/Ro                                                                                          (c)
// combining equations (a) and (b) gives 
// (To-Ta)/Ro = %pi*OD*1.32*(To-Ta)^(5/4)/OD^(1/4)
// this relation may be introduced into equation (c) to yield two equations with the two unknowns Ti and To:

// (Tw-Ti)/Ri = (Ti-To)/Rs              (1)
// (Ti-To)/Rs = %pi*OD*1.32*(To-Ta)^(5/4)/OD^(1/4)             (2)
// this is a non-linear equation which can be solved as 
for Ti = 50:0.001:100
    Q = ((Ti-(Ti-(Tw-Ti)*(Rs/Ri)))/Rs)-(%pi*OD*1.32*((Ti-(Tw-Ti)*(Rs/Ri))-Ta)^(5/4)/OD^(1/4));
    if Q>0 & Q<6 then
        Tinew = Ti;
    else
        Ti = Ti;
    end
end
Ti = Tinew;// [degree celsius]
To = (Ti-(Tw-Ti)*(Rs/Ri));// [Degree celsius]
// as a result, the outside heat transfer coefficient and thermal resistance are
ho = 1.32*((To-Ta)/OD)^(1/4);// [W/square meter degree celsius]
Ro = 1/(OD*7.91*%pi);// 
// the overall heat transfer coefficient based on the outer area is written in terms of these resistances as 
Uo = 1/(Ao*(Ri+Ro+Rs));// [W/area degree celsius]
// in this calculation we used the outside area for 1.0 m length as  Ao
// so 
Uo = Uo;// [W/square meter degree celsius]
printf("overall heat transfer coefficient is %f W/square meter degree celsius",Uo);





























