//Variable declaration:
m1 = 62000                      //Mass flowrate of alcohol (lb/h)
h1 = 365                        //Enthalpy of vapour (Btu/lb)
cp = 1                          //Heat capacity of water (Btu/lb. F)
T1 = 85                         //Entering temperature of water ( F)
T2 = 120                        //Exit temperature of water ( F)
a1 = 2.11                       //Flow area for the shell side (ft^2)
N = 700                         //Total number of tubes
a2 = 0.546                      //Flow area per tube (in^2/tube)
n = 4                           //Number of tube passes
p = 62.5                        //Density of water (lb/ft^3)
L = 16                          //Length of condenser (ft)
hio = 862.4                     //Cooling water inside film coefficient (Btu/h.ft^2. F)
g = 9.8                         //Gravitational accleration (m^2/s)
Rf = 0.003                      //Fouling factor (Btu/h.ft^2. F)

//Calculation:
Q1 = m1*h1                      //Heat loss from alcohol (Btu/h)
Q2 = Q1                         //Heat gained by water (Btu/h)
DT = T2-T1                      //Temperature difference ( F)
m2 = Q2/(cp*DT)                 //Water mass flow rate (lb/h)
LMTD = ((T2-32)-(T1-32))/log((T2-32)/(T1-32))   //Log mean temperature difference ( F)
at = (N*a2)/(144*n)             //Total flow area for tube side (ft^2)
G1 = m1/a1                      //Mass velocity of flow in shell side (lb/h.ft^2)
G2 = m2/at                      //Mass velocity of flow in tube side (lb/h.ft^2)
V = G2/(3600*p)                 //Velocity of water (ft/s)
G3 = m1/(L*N)**(2/3)            //Loading G (lb/h.ft)
//For alcohol:
kf = 0.105                      //Thermal conductivity (Btu/h.ft. F)
muf = 0.55*2.42                 //Dynamic viscosity (lb/ft.h)
sf = 0.79                       //
pf = sf*p                       //Density (lb/ft^3)
h = 151*(((kf**3)*(pf**2)*g*muf)/((muf**2)*n*G3))**(1/3)   //Heat transfer coefficient for the shell side (Btu/h.ft^2. F)
ho = h                          //Outside heat transfer coefficient of the tube bundle (Btu/h.ft^2. F)
Uc = (hio*ho)/(hio+ho)          //Overall heat transfer coefficient for a new (clean) heat exchanger (Btu/h.ft^2. F)
A = N*L*0.2618                  //Area for heat transfer (ft^2)
Ud = Q1/(A*DT)                  //Design (D) overall heat transfer coefficient (Btu/h.ft^2. F)
Rd = (Uc-Ud)/(Uc*Ud)            //Dirt (d) factor (Btu/h.ft^2. F)

//Result:
printf("The dirt (d) factor is : %.4f Btu/h.ft^2. F .",Rd)
if (Rd>Rd) then
    printf("Therefore, the exchanger as specified is unsuitable for these process conditions since the fouling factor is above the recommended value. Cleaning is recommended.")
else
    printf("Therefore, the exchanger as specified is suitable for these process conditions since the fouling factor is below the recommended value. Cleaning is not recommended.")
end
