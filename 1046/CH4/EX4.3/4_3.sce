//Example 4.3
//what will be the temp. of the wire at steady state.
//Given
d=7.24*10^-4                  //m, diameter of wire
l=1                           //m, length of wire
I=8.3                         //A, current in a wire
R=2.625                       //ohm/m, electrical resistance
V=10                          //m/s, air velocity
Tb=27                         //C, bulk air temp.
//the properties at bulk temp.
mu=1.983*10^-5                //m^2/s, viscosity
k=0.02624                     //W/m C, thermal conductivity
rho=1.1774                    //kg/m^3, density of air
cp=1.0057                     //kj/kg C, specific heat of air

//calculation
Pr=cp*10^3*mu/k               //Prandtl no.
Re=d*V*rho/mu                 // Reynold no.
//from eq. 4.19, nusslet no.
Nu=0.3+(0.62*Re^(1/2)*Pr^(1/3)/(1+(0.4/Pr)^(2/3))^(1/4))*(1+(Re/(2.82*10^5))^(5/8))^(4/5)
hav=Nu*k/d                    //W/m^2 C, average heat transfer coefficient
Q=I^2*R                       //W, rate of electrical heat generation
A=%pi*d*l
dt=Q/(hav*A)                  //C,temp. difference
T=dt+Tb                       //C, steady state temp.
printf("The steady state temprature is %f C\n",T)
//REVISED CALCULATION
Tm=(T+Tb)/2                   //C, mean air film temp.
//the properties at Tm temp.
mu1=2.30*10^-5                  //m^2/s, viscosity
k1=0.0338                       //W/m C, thermal conductivity
rho1=0.878                      //kg/m^3, density of air
cp1=1.014                       //kj/kg C, specific heat of air
Re1=d*V*rho1/mu1                // Reynold no.
Pr1=(1.014*10^3*2.30*10^-5)/k1             //Prandtl no.
//from eq. 4.19, nusslet no.
Nu1=0.3+(0.62*Re1^(1/2)*Pr1^(1/3)/(1+(0.4/Pr1)^(2/3))^(1/4))*(1+(Re1/(2.82*10^5))^(5/8))^(4/5)
hav1=Nu1*k1/d                    //W/m^2 C, average heat transfer coefficient
dt1=Q/(hav1*A)                  //C,temp. difference
T1=dt1+Tb                       //C, steady state temp.
printf("The recalculated value  is almost equal to previous one.")
