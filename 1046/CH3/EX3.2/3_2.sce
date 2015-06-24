//Example 3.2
//calculate the time required for the  heating coil.
//Given
P=1*10^3           //W, electrical heating capacity
V=220              //V, applied voltage
d=0.574*10^-3      //m, diameter of wire
R=4.167            //ohm, electrical resistance
Tr=21              //C, room temp.
h=100              //W/m^2 C, heat transfer coefficient
rho=8920           //kg/m^3, density of wire
cp=384             //j/kg C, specific heat of wire
percent=63         //%, percent of the steady state
//Calculation
R_=V^2/P           //ohm, total electrical resistance
l=R_/R             //m, length of wire
A=%pi*d*l          //m^2, area of wire
Tf=P/(h*A)+Tr      //final temp.
dtf=Tf-Tr          //C. steady state temp. rise
//temp. of wire after 63% rise
T=Tr+(percent/100)*dtf   
//rate of heat accumulation on the wire
//d/dt(m*cp*T)                       (1)
//rate of heat loss
//h*A*(T-Tr).........................(2)
//heat balance eq.       (1)=(2)
m=%pi*d^2*l*rho/4  //kg. mass of wire
//integrating heat balance eq.
t=integrate('1/((P/(m*cp))-((h*A)/(m*cp))*(T-Tr))','T',21,322)
printf("The time required for the heating coil is %f s",t)
