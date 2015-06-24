clear;
clc;
printf("\t\t\tExample Number 10.2\n\n\n");
// overall heat transfer coefficient for pipe exposed to steam
// Example 10.2 (page no.-523-524) 
// solution

p = 101325;// [Pa] pressure of steam
Tg = 100;// [degree celsius] temperature of steam
// we have already determined the inside convection heat-transfer coefficient in example(10.1) as 
hi = 1961;// [W/square meter]
// the water film properties are 
rho = 960;// [kg/cubic meter] density
mu_f = 2.82*10^(-4);// [kg/m s]
kf = 0.68;// [W/m degree celsius]
hfg = 2255*10^(3);// [J/kg]
g = 9.8;// [m/s^(2)] acceleration due to gravity
d = 0.06033;// [m] diameter of the pipe
// the convection coefficient for condensation on the outside of the pipe is obtained by using equation(9-12)
// h_o = 0.725*[(rho^(2)*g*hfg*kf^(3))/(mu_f*d*(Tg-To))]^(1/4)                            (a)
Ao = %pi*d;// [square meter] outside area
// outside thermal resistance per unit length is 
// R_o = 1/(h_o*A_o)                                                                         (b)
// the energy balance requires 
// [Tg-To]/R_o = [To-Ti]/R_s = [Ti-Tw]/R_i                                                  (c)
// from example 10.1 we have
Ri = 3.092*10^(-3);
Rs = 4.097*10^(-4);
Tw = 98;// [degree celsius]
// equation (b) and (c) may be combined to give 
// (Tg-To)^(3/4)/3403 = (To-Ti)/Rs              (1)
// (To-Ti)/Rs = (Ti-Tw)/Ri             (2)
// this is a non-linear equation which can be solved as
for Ti = 98.1:0.01:99.75
    P = ((Tg-(Ti+Rs*(Ti-Tw)/Ri))^(3/4))*3403-(((Ti+Rs*(Ti-Tw)/Ri)-Ti)/Rs);
    if P>(-10) & P<0 then
        Tinew = Ti;
    else
        Ti = Ti;
    end
    
end
Ti = Tinew;// [degree celsius]
To = (Ti+Rs*(Ti-Tw)/Ri);// [degree celsius]
// the exterior heat-transfer coefficient and thermal resistance then become
ho = 0.725*[(rho^(2)*g*hfg*kf^(3))/(mu_f*d*(Tg-To))]^(1/4);// [W/square meter degree celsius]
Ro = 1/(ho*Ao);
// based on unit length of pipe, the overall heat transfer coefficient is 
Uo = 1/(Ao*(Ri+Ro+Rs));// [W/area degree celsius]
// since Ao and the R's were per unit length
// so 
Uo = Uo;// [W/square meter degree celsius]
printf("overall heat transfer coefficient is %f W/square meter degree celsius",Uo);








