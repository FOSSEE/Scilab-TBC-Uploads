//Variable declaration:
Ts = 200.0+460.0                //Surface temperature of pipe (°R)
Too = 70.0+460.0                //Air temperature (°R)
D = 0.5                         //Diameter of pipe (ft)
R = 0.73                        //Universal gas constant (ft^3.atm.R^−1.lb.mol^−1)
P = 1.0                         //Atmospheric pressure (Pa)
MW = 29.0                       //Molecular weight of fluid (mol)
//From Appendix:
mu = 1.28*10**-5                //Absolute viscosity (lb/ft.s)
k = 0.016/3600.0                //Thermal conductivity (Btu/s.ft.°F)
g = 32.174                      //Gravitational acceleration (ft/s^2)

//Calculation:
Tav = (Ts+Too)/2                //Average temperature (°R)
v = R*Tav/P                     //kinematic viscosity (ft^3/lbmol)
p = MW/v                        //Air density (lb/ft^3)
B = 1.0/Tav                     //Coefficient of expansion (°R^-1)
DT = Ts-Too                     //Temperature difference (°R)
Gr = D**3*p**2*g*B*DT/mu**2     //Grashof number
//From equation 10.5:
Cp = 0.25                       //Air heat capacity (Btu/lb.°F)
Pr = Cp*mu/k                    //Prandtl number
GrPr = 10**8.24                 //Rayleigh number
//From Holman^(3):
Nu = 10**(1.5)                  //Nusselt number
h = Nu*(k/D)*3600.0             //Air heat transfer film coefficient (Btu/h.ft.°F)

//Result:
printf("The required air heat transfer film coefficient is : %.2f Btu/h.ft.°F .",h)
