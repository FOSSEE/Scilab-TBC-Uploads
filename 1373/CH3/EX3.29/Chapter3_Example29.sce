//Chapter-3, Example 3.29, Page 104
//=============================================================================
clc
clear

//INPUT DATA
W=1;//Length of the cylinder in m
D=0.05;//Diameter of the cylinder in m
Ta=45;//Ambient temperature in degree C
n=10;//Number of fins
k=120;//Thermal conductivity of the fin material in W/m.K
t=0.00076;//Thickness of fin in m
L=0.0127;//Height of fin in m
h=17;//Heat transfer coefficient in W/m^2.K
Ts=150;//Surface temperature of cylinder in m

//CALCULATIONS
P=(2*W);//Perimeter of cylinder in m
A=(W*t);//Surface area of cyinder in m^2
m=sqrt((h*P)/(k*A));//Calculation of m for determining heat transfer rate
Qfin=(sqrt(h*P*k*A)*(Ts-Ta)*((tanh(m*L)+(h/(m*k)))/(1+((h/(m*k))*tanh(m*L)))));//Heat transfer through the fin in kW
Qb=h*((3.14*D)-(n*t))*W*(Ts-Ta);//Heat from unfinned (base) surface in W
Q=((Qfin*10)+Qb);//Total heat transfer in W
Ti=((Ts-Ta)/(cosh(m*L)+((h*sinh(m*L))/(m*k))));//Ti to calculate temperature at the end of the fin in degree C
T=(Ti+Ta);//Temperature at the end of the fin in degree C

//OUTPUT
mprintf('Rate of heat transfer is %3.2f W\nTemperature at the end of the fin is %3.2f degree C',Q,T )

//=================================END OF PROGRAM==============================
