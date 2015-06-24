//Example 11.4
//Calculate the temprature of the plate after 1 hour 
//if its initial temp, is 120 C

//Given
T1=120                             //C, initial temp.
T2=25                              //C, Final temp.
Tm=(T1+T2)/2                       //C, mean temp.
rho=8880                           //kg/m^3, density of plate
//Properties of air at mean temp.
mu=2.07*10^-5                      //m^2/s, viscosity
Pr=0.7                             //Prandtl no.
k=0.03                             //W/m C, thermal conductivity
l=0.4                              //m, length of plate
w=0.3                              //m, width of plate
d=0.0254                           //m, thickness of plate
Vinf=1                             //m/s, air velocity
Re=l*Vinf/mu                       //REynold no.

//from eq. 11.90 (b)
Nu=0.664*(Re)^(1/2)*(Pr)^(1/3)     //average Nusslet no.
//Nu=l*h/k
h=Nu*k/l                           //W/m^2 C, heat transfer coefficient
//Rate of change of temp. is given by
A=2*l*w                            //m^2. area of plate
t=1*3600                           //s, time
cp=0.385*10^3                      //j/kg K, specific heat
m=l*w*d*rho                        //kg, mass of plate

//-d/dt(m*cp8dt)=A*hv*(T1-T2)
//appling the boundary condition 
T=(T1-T2)*exp(-A*h*t/(m*cp))+T2
printf("The  temprature of plate after 1 hour is %f C",round(T))
