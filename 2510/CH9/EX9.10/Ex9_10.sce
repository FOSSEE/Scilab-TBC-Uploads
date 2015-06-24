//Variable declaration:
D = 0.902/12.0                  //Inside diameter of tube (ft)
T_in = 60.0                     //Temperature water entering the tube (°F)
T_out = 70.0                    //Temperature water leaving the tube (°F)
V = 7.0                         //Average wave velocity water (ft/s)
p = 62.3                        //Density of water (lb/ft^3)
mu = 2.51/3600.0                //Dynamic viscosity of water (lb/ft.s)
Cp = 1.0                        //Viscosity of centipoise (Btu/lb.°F)
k = 0.34                        //Thermal conductivity of water (Btu/h.ft.°F)

//Calculation:
Re = D*V*p/mu                   //Reynolds Number
Pr = Cp*mu/k*3600               //Prandtl number
//From equation 9.26:
Nu = 0.023*(Re**0.8)*(Pr**0.4)  //Nusselt number
h = (k/D)*Nu                    //Average film heat transfer coefficient (Btu/h.ft^2.°F)

//Result:
printf("The required average film heat transfer coefficient is : %.0f  Btu/h.ft^2.°F.",h)
