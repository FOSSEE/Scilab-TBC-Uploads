//Variable declaration:
T1 = 99.0                           //Mean film temperature (°C)
T2 = 98.0                           //Plate surface temperature (°C)
g = 9.807                           //Gravitational acceleration (m/s^2)
//From Appendix:
T3 = 100.0                          //Saturation temperatre (°C)
h_vap1 = 970.3                      //Latent heat of steam in Btu/lb (Btu/lb)
h_vap2 = 2.255*10**6                //Latent heat of steam in J/kg (J/kg)
p_v = 0.577                         //Density of steam (kg/m^3)
p_l = 960.0                         //Density of liquid water condensate (kg/m^3)
mu_l = 2.82*10**-4                  //Absolute viscosity of liquid water condensate (kg/m.s)
k = 0.68                            //Thermal conductivity of water (W/m.K)
//From table 12.2
Z = 0.4                             //Height of rectangular plate (m)
Pw = 0.2                            //Wetted perimeter of rectangular plate (m)
syms h                              //Average heat transfer coefficient (W/m^2.K)

//Calculation:
A = Z*Pw                            //Heat transfer area of plate (m^2)
R = A/Pw                            //Ratio A/Pw (m)
v_l = mu_l/p_l                      //Kinematic viscosity of liquid water condensate (m^2/s)
Co1 = (h/k)*(v_l**2/g/(1-p_v/p_l))**(1/3)    //Condensation number (in terms of the average heat transfer coefficient)
Re = 4*h*Z*(T3-T2)/(mu_l*h_vap2)    //Reynolds number in terms of the average heat transfer coefficient
//From equation 12.14:
CO1 = 0.0077*Re**Z                  //Co in terms of Reynolds number for flow type 1
x1 = solve(h,Co1-CO1)               //Solving heat transfer coefficient (W/m^2.K)
h1 =x1(2);                          //Average heat transfer coefficient for flow type 1 (W/m^2.K)
Re1 = subst(h1,h,Re)                //Reynolds number for flow type 1
CO2 = 1.874*Re**(-1/3)              //Co in terms of Reynolds number for flow tupe 2
x2 = solve(Co1-CO2,h)               //Solving average heat transfer coefficient for flow type 2 (W/m^2.K)
h2 = x2(1);                         //Average heat transfer coefficient for flow type 2 (W/m^2.K)
Re2 = subst(h2,h,Re)                 //Reynolds number for flow type 2
h2 = round(h2*10**-1)/10**-1

//Result:
printf("The type of condensation flow type 2 is laminar.")
disp("And the condensation heat transfer coefficient is : ")
disp(h2)
disp("W/m^2.K.")
