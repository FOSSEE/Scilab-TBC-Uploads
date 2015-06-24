//Example 4.4
//Calculate 
//(a) what is initial  rate of melting of ice.
//(b)how much time would be needed to melt away 50 % of ice
//Given
di=0.04                       //m, diameter of ice ball
V=2                           //m/s, air velocity
T1=25                         //C, steam temp.
T2=0
//the properties  of air
mu=1.69*10^-5                 //kg/ms, viscosity
k=0.026                       //W/m C, thermal conductivity
rho=1.248                     //kg/m^3, density 
cp=1.005                      //kj/kg C, specific heat 
//propertice of ice
lamda=334                     //kj/kg, heat of fusion
rhoice=920                    //kg/m^3 density of ice

//calculation
Pr=cp*10^3*mu/k               //Prandtl no.
Re=di*V*rho/mu                // Reynold no.
//from eq. 4.19, nusslet no.
Nu=2+(0.4*Re^0.5+0.06*Re^(2/3))*Pr^0.4
hav=Nu*k/di                   //W/m^2 C, average heat transfer coefficient
Ai=%pi*di^2                   //initial area of sphere
Qi=Ai*hav*(T1-T2)             //W=J/s, initial rate of heat transfer
Ri=Qi/lamda                   //initial  rate of melting of ice
printf("initial  rate of melting of ice is %f g/s\n",Ri)

//(b)
//mass of ice ball 4/3*%pi*r^3
//Rate of melting= Rm= -d/dt(m)
//Rate of heat input required =-lamda*Rate of melting
//heat balance equation
// -lamda*(Rm)=h*4*%pi*r^2*dt
//integrating and solving
rf=((di/2)^3/2)^(1/3)
//solving eq. 3
t1=1.355*10^-4/(8.136*10^-8)
printf("The required time is is %f s\n",round(t1))

