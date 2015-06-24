//Example 3.1
//calculate the time required for reduction .
//Given
di=0.06        //m,initial diameter of iceball
T1=30          //C, room temp.
T2=0           //ice ball temp.
h=11.4         //W/m^2 C, heat transfer coefficient
x=40           //% for reduction
rho=929        //kg/m^3, density of ice
Lv=3.35*10^5   //j/kg, latent heat of fusion
// m=4/3*%pi*r^3      //kg,mass of ice ball
//rate of melting=-dm/dt
//rate of heat adsorption =-4*%pi*r^2*rho*dr/dt*lamda
//at initial time t=0
C1=di/2        //constant of integration
//if the volume of the ball is reduced by 40% of the original volume 
r=((1-x/100)*(di/2)^3)^(1/3)
//time required for melting using eq. 1
t=(di/2-r)/(h*(T1-T2)/(rho*Lv))
printf("The time required for melting the ice is %f s",t)
