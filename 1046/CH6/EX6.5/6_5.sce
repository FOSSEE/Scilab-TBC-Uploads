//Example 6.5
//Calculate the rate of  condensation of propane.
//GIVEN
rhol=483                         //kg/m^3, density of liquid propane
mul=9.1*10^-5                    //P ,viscosity of liquid propane
kl=0.09                          //W/m K, thermal conductivity of liquid propane
Lv=326                           //kj/kg. enthalpy of vaporization
Cpl=2.61                         //kj/kg K, specific heat of liquid propane
T1=32
T2=25                            //C, surface temp.
p1=11.2
rhov=24.7                       //kg/m^3, density of vapour
g=9.8
h=0.3
//Calculation
Lv1=Lv+0.68*Cpl*(T1-T2)
//h=0.943*(g*Lv1*10^3*rhol*(rhol-rhov)*kl^3/(mul*L*(T1-T2)))^(1/4)
//Q=h*(L*1)*(T1-T2)
//m=Q/(Lv1*10^3)=1.867*10^-2*L^(3/4)
Ref=30
//from the relation  4*m/mu=Re
L=(Ref*mul/(4*1.867*10^-2))^(4/3)
m=1.867*10^-2*L^(3/4)        //rate of condensation for laminar flow
//from eq. 6.32
//Nu1=h_/kl*(mul^2/(rhol*(rhol-rhov)*g))^(1/3)=Ref/(1.08*(Ref)^(1.22)-5.2)
Lp=h-L        //length of plate over which flow is wavy
A=Lp*1         //m^2 area of condensation

h_=poly(0,"h_")
//Rate of condensation over total length=m(laminar)+m(wavy)
m2=m+h_*A*(T1-T2)/(Lv1*10^3)
Ref1=4*m2/mul

deff('[x]=f(h1)','x=h1/kl*(mul^2/(rhol*(rhol-rhov)*g))^(1/3)-(29.76+0.262*h1)/(1.08*(29.76+0.262*h1)^(1.22)-5.2)')
h1=fsolve(1000,f)  //W/m^2C
m2=m+h1*A*(T1-T2)/(Lv1*10^3)
Ref1=4*m2/mul
m2=m+h1*A*(T1-T2)/(Lv1*10^3)
printf("Total rate of condensation is %f kg/h",m2*3600)

