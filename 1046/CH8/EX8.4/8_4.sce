//Example 8.4
//calculate the time required to heat the charge.

//given
p=0.0795           //m. pitch of the coil
d1=0.0525         //m,coil diameter
h=1.464             //m,height of the limpetted section
d2=1.5              //m,diameter of batch polymerization reactor
d3=0.5              //m,diameter of agitator
rpm=150           //speed of agitator
rho=850            //kg/m3,density of monomer
rho1=900          //kg/m3,density of fluid
mu=0.7*10^-3   //poise, viscosity of monomer
mu1=4*10^-3    //poise, viscosity of fluid
cp=0.45            //kcal/kg C, specific heat of monomer
cp1=0.5            //kcal/kg C, specific heat of fluid
k=0.15              //kcal/h mC, thermal conductivity of monomer
k1=0.28             //kcal/h mC, thermal conductivity of fluid
Rdi=0.0002         //h m2 C/kcal, fouling factor for vessel
Rdc=0.0002        //h m2 C/kcal, fouling factor for coil
Tci=120             //C, initial temp. of coil liquid
Tvi=25               //C, initial temp. of vessel liquid
Tvf=80               //C, final temp. of vessel liquid

//calculation
a=%pi*d2*h       //outside area of the vessel
x=60                  //%.  added of the unwetted area to the wetted area
ao=((d1+(x/100)*(p-d1))/p)*a  //m^2,effective outside heat transfer area of vessel
ai=6.9                        //m^2,inside heat transfer area of vessel
                               //same as outside area , if thickness is very small
//vessel side heat transfer coefficient
Re=(d3^2*(rpm/60)*rho)/mu      //reynold no.
Pr=((cp*3600)*(mu))/k
//from eq. 8.66
y=1                            //x=mu/muw=1
Nu=0.74*(Re^(0.67))*(Pr^(0.33))*(y^(0.14))        //Nusslet no
hi=Nu*(k/d2)                                      //heat transfer coefficient

//coil side heat transfer coefficient
v=1.5                //m/s, linear velocity of fluid
fa=((%pi/4)*d1^2)     //m2, flow area of coil
fr=v*fa*3600           //m3/h , flow rate of the fluid
Wc=fr*rho             //kg/h , flow rate
dh=(4*(%pi/8)*d1^2)/(d1+(%pi/2)*d1)     //m,hydrolic diameter of limpet coil
Re1=v*rho1*dh/mu1                        //coil reynold no.
Pr1=cp1*mu1*3600/k1                      //prandtl no. of the coil fluid
//from eq. 8.68
d4=0.0321                               //m, inside diameter of the tube
Nu1=0.021*(Re1^(0.85)*Pr1^(0.4)*(d4/d2)^(0.1)*y^0.14)        
hc=Nu1*(k1/dh)                       //coil side coefficient

U=1/((1/hi)+(ai/(hc*ao))+Rdi+Rdc)     //overall heat transfer corfficient
//from eq. 8.63
beeta=exp(U*ai/(Wc*cp1))
Wv=2200                              //kg, mass of fluid vessel
t=(beeta/(beeta-1))*((Wv*cp)/(Wc*cp1))*log((Tci-Tvi)/(Tci-Tvf))      
printf("the time required to heat the charge %f min",t*60)
