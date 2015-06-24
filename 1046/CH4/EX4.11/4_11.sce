//Example 4.11
//calculate the rate of heat transfer to water.
//Given
Ti=260                 //C, initial  temp.
Ts=70                  //C, skin temp.
St=0.15                //m,space between tubes in equilateral triangular arrangement
Sd=St                  //space between tubes
mu=4.43*10^-5                //m^2/s, momentum diffusity
k=0.0375                     //W/m C, thermal conductivity
rho=0.73                     //kg/m^3, density of air
cp=0.248                     //kj/kg C, specific heat of air
V=16                         //m/s, velociity 
d=0.06                       //m, outside diameter of tube
Nt=15                        //no. of tubes in transverse row
Nl=14                        //no. of tubes in longitudinal row
N=Nl*Nt                      //total no. of tubes
L=1                          //m, length
//Calculation
Sl=(sqrt(3)/2)*St
Pr=cp*mu*3600*rho/k          //Prandtl no. of bulk air
Pr=0.62
Prw=0.70                     //Prandtl no. of air at wall temp. 70 C
//from eq. 4.25
Vmax=(St/(St-d))*V
//from eq. 4.26
Vmax1=(St/(2*(St-d)))*V
Redmax=d*Vmax/mu
p=St/Sl                     //pitch ratio
p<2
//from table 4.3
m=0.6
C=0.35*(St/Sl)^0.2
h=(k/d)*C*(36163)^m*(Pr)^(0.36)*(Pr/Prw)^(0.25)
//from eq. 4.28
dt=190*exp(-%pi*d*N*h/(rho*V*3600*Nt*St*cp))
LMTD=((Ti-Ts)-(dt))/log((Ti-Ts)/dt)
A=%pi*d*L*N                //m^2, heat transfer area
Q=h*A*LMTD
printf(" the rate of heat transfer to water.is %f kcal/h",Q)
