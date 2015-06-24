//Example 4.8
//Calculate the drop in temp. of the water.
//Given
V=1.8                  //m/s, velocity of hot water
T1=110                 //C, initial temp.
l=15                   //m, length  of pipe
t=0.02                 //m, thickness of insulation
kc=0.12                //W/mC,thermal conductivity of insulating layer
ho=10                  //Wm^2 C, outside film coefficient
T2=20                  //C, ambient temp.
//the properties of water at 110 C
mu=2.55*10^-4          //m^2/s, viscosity
k=0.685                //W/m C, thermal conductivity
rho=950                //kg/m^3, density of air
cp=4.23                //kj/kg C, specific heat of air
di=0.035               //m, actual internal dia. of pipe
ri=di/2                //m,internal radius
t1=0.0036              //m, actual thickness of 1-1/4 schedule 40 pipe
ro=ri+t1               //m, outer radius of pipe
r_=ro+t                //m, outer radius of insulation
kw=43                  //W/mC, thermal conductivity of steel
//calculation
Pr=cp*10^3*mu/k        //Prandtl no.
Re=di*V*rho/mu         // Reynold no.
//from eq. 4.9,  Nusslet no.
Nu=0.023*(Re)^0.88*Pr^0.3
hi=Nu*k/di             //W/m^2 C, average heat transfer coefficient
//the overall coefficient inside area basis Ui
Ui=1/(1/hi+(ri*log(ro/ri))/kw+(ri*log(r_/ro))/kc+ri/(r_*ho)) 
Ai=%pi*di*l           //m^2, inside area basis
W=%pi*ri^2*V*rho      //kg/s, water flow rate
//from the relation b/w LMTD and rate of heat loss
//deff('[x]=f(To)','x=W*cp*10^3*(T1-To)-Ui*Ai*((T1-To)/log((T1-T2)/(To-T2)))')
//To=fsolve(1,f)

deff('[x]=f(To)','x=(W*cp*10^3)/(Ui*Ai)*(T1-To)-((T1-To)/log((T1-T2)/(To-T2)))')
To=fsolve(100,f)
printf("The outlet eater temp. is %f C",To)
