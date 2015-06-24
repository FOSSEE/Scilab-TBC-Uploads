//Example 7.12
//calculate the time required for ball to cool down.
//Given
d=0.3     //m, diameter of steel sphere
Ti=800    //K, initial temp. of sphere
T2=303    //C,ambient temp.
T1=343     //C, final tempreture
rho=7801  //kg/m^3, density of steel
cp=0.473  //kj/kg C, specific heat of steel
//calculation
R=d/2    //m, radius of sphere
A1=4*%pi*R^2   //m^2, area of sphere
m=4/3*%pi*R^3*rho  //m^3, mass of sphere
F12=1              //view factor
s=5.669*10^-8      //stephen Boltzman's constant
//-dT1/dt=A1*F12*s*(T^4-T2^4)/(m*cp)
I=integrate('(1/(T1^4-T2^4))','T1',343,800)
t=I/(A1*F12*s/(m*cp*10^3))
printf("The time required for the ball to cool is %f h",t/3600)
