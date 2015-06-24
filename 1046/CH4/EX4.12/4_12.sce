//Example 4.12
//Calculate the rise in temp. of water .
//Given
W=0.057                      //m^3/min/tube, flow rate of water
W_=W*16.66                   //kg/s. water flow rate
di=0.0212                    //m,inside diameter
Ti=32                        //C, inlet water temp.
Tw=80                        //C, wall temp.
L=3                          //m, length of pip
//Calculation
V=(W/60)*(1/((%pi/4)*di^2))   //m/s, water velocity
//the properties of water at mean liquid temp..
mu=7.65*10^-4                 //m^2/s, viscosity
k=0.623                       //W/m C, thermal conductivity
rho=995                       //kg/m^3, density of air
cp=4.17                       //kj/kg C, specific heat of air

//calculation
Pr=cp*10^3*mu/k               //Prandtl no.
Re=di*V*rho/mu                // Reynold no.
//from eq. 4.19, nusslet no.
//from dittus boelter eq.
Nu=0.023*Re^0.8*Pr^0.4        //Prandtl no.
f=0.0014+0.125*Re^-0.32       //friction factor
//Reynold analogy
St=f/2                       //Stanton no.
Nu1=Re*Pr*St
//Prandtl analogy
St1=(f/2)/(1+5*(Pr-1)*sqrt(f/2))
Nu2=St1*Re*Pr               
//colburn analogy
Nu3=Re*Pr^(1/3)*(f/2)
h=Nu3*k/(di)               //W/m^2 C av heat transfer coefficient
//Q=W_*cp*10^3*(To-Ti)=h*A*LMTD
A=%pi*di*L       //m^2
deff('[x]=f(To)','x=W_*cp*10^3*(To-Ti)-h*A*((To-Ti)/log((Tw-Ti)/(Tw-To)))')
To=fsolve(1,f)
//Revised calculation
Tm=(Ti+To)/2               //C, mean liquid temp.
//the properties of water at new mean liquid temp..
mu1=6.2*10^-4                 //m^2/s, viscosity
k1=0.623                       //W/m C, thermal conductivity
rho1=991                       //kg/m^3, density of air
cp1=4.17                       //kj/kg C, specific heat of air
//calculation
Pr1=cp1*10^3*mu1/k1               //Prandtl no.
Re1=di*V*rho1/mu1                // Reynold no.
//from dittus boelter eq.
f1=0.0014+0.125*Re1^(-0.32)       //friction factor
//colburn analogy
Nu4=Re1*Pr1^(1/3)*(f1/2)
h1=Nu4*k1/(di)               //W/m^2 C av heat transfer coefficient
deff('[x]=f(To_)','x=W_*cp*10^3*(To_-Ti)-h1*A*((To_-Ti)/log((Tw-Ti)/(Tw-To_)))')
To_=fsolve(1,f)
printf("Outlet temp. of water for one pass through the tubes is %f C",To_)

