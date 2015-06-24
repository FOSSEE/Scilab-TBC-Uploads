//Example 4.9
//at what temp. does the water leave the pipe.
//Given
T1=28              //C, inlet temp. 
T2=250             //C,bulk temp.
V=10               //m/s, gas velocity
l=20               //m, length of pipe
mw=1*3600          //kg/h, water flow rate
di=4.1*10^-2       //m, inlet diameter
Tm=(T1+T2)/2       //C, mean temp.
ro=0.0484          //m, outside radius
//properties of water
mu=8.6*10^-4       //kg/ms, viscosity
kw=0.528           //kcal/h m C, thermal conductivity
kw_=0.528*1.162    //W/ m C, thermal conductivity
rho=996            //kg/m^3, density of air
cp=1*4.18          //kj/kg C, specific heat of air
cp_=1              //kcal/kg C
//properties of flue gas
mu1=2.33*10^-5     //kg/ms, viscosity
ka=0.0292          //kcal/h m C, thermal conductivity
rho1=0.891         //kg/m^3, density of air
cp1=0.243          //kcal/kg C, specific heat of air
Pr=0.69

//calculation
A=%pi/4*di^2       //m^2, cross section of pipe
Vw=1/(rho*A)       //m/s, velocity of warer
Re=di*Vw*rho/mu    // Reynold no.
Pr1=cp*10^3*mu/kw_   //Prandtl no. for water
Nu=0.023*Re^0.8*Pr1^0.4               //Nusslet no.
//water side heat transfer coefficient  hi
hi=206*kw/di
//gas side heat transfer coefficient    ho
a=41              //mm, i.d. schedule
Tw=3.7            //mm, wall thickness
do=a+2*Tw         //mm, outer diameter of pipe
Re1=do*10^-3*V*rho1/mu1    // Reynold no
//from eq. 4.19, nusslet no.
Nu1=0.3+(0.62*Re1^(1/2)*Pr^(1/3)/(1+(0.4/Pr)^(2/3))^(1/4))*(1+(Re1/(2.82*10^5))^(5/8))^(4/5)
ho=(Nu1*ka/do)*10^3      //kcal/h m^2 C
Uo=1/(ro/(di/2*hi)+1/ho)   //kcal/h m^2 C, overall heat transfer coefficient

//Heat balance
A1=%pi*ro*l         //m62, outside area of pipe
//from the formula of LMTD
deff('[x]=f(T2_)','x=mw*cp_*(T2_-T1)-Uo*A1*((T2_-T1)/log((T2-T1)/(T2-T2_)))')
T2_=fsolve(1,f)
printf("The exit water temp is %f K",round(T2_))
