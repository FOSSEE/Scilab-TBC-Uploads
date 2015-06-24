//Example 4.5
//calculate the average time of contact .
//Given
Vo=0.5                        //m/s air velocity
T1=800                        //C, initial temp.
T2=550                        //C, final temp.
Tam=500                       //C, air mean temp.
P=1.2                         //atm, pressure
//the properties of solid particles.
dp=0.65*10^-3                 //m, average particle diameter
cps=0.196                     //kcal/kg C, specific heat
rhos=2550                     //kg/m^3, density 
//Properties of air
mu=3.6*10^-5                  //kg/ms, viscosity
k=0.05                        //kcal/hm C, thermal conductivity
rho=0.545                     //kg/m^3, density of air
cp=0.263                      //kcal/kg C, specific heat of air

//calculation
Pr=cp*mu*3600/k                    //Prandtl no.
Redp=dp*Vo*rho/mu             // Reynold no.
//from eq. 4.29(b) heat transfer coefficient
h=(k/dp)*(2+0.6*(Redp)^(1/2)*(Pr)^(1/3))
Tg=500                        //C, gas temp.
//from heat balance equation
// -(dTs/dt)=6h/(dp*rhos*cps)*(Ts-Tg)
t=(dp*rhos*cps/(6*h))*integrate('(1/(Ts-Tg))','Ts',550,800)
printf("the required contact time is %f s",t*3600)
