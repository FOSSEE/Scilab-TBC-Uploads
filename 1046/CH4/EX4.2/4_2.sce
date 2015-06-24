//Example 4.2
//Determine
//(a)local heat transfer coefficient .
//(b)the average heat transfer coefficient
//the rate of heat loss from the surface.

//Given
l=2                      //m, length of flat surface
T1=150                   //C, surface temp.
p=1                      //atm, pressure
T2=30                    //C, bulk air  temp.
V=12                     //m/s, air velocity

//Calculation
Tf=(T1+T2)/2            //C, mean air film temp.
mu=2.131*10^-5            //m^2/s, viscosity
k=0.031                   //W/m C, thermal conductivity
rho=0.962                 //kg/m^3, density of air
cp=1.01                   //kj/kg C, specific heat of air
Pr=cp*10^3*mu/k                //Prandtl no.
Remax=l*V*rho/mu          //maximum Reynold no.
Re=5*10^5                 //Reynold no. during transition to turbulent flow   
L_=(Re*mu)/(V*rho)        //m,distance from the leading edge
//for laminar flow heat transfer coefficient h, 
//h16.707*x^-(1/2)
//(a)
//h2=31.4*x^(-1/5)
//b
hav=22.2
//c
Q=hav*l*p*(T1-T2)
printf("The rate of heat loss is %f W",Q)
