//Example 5.3
//Calculate the time required for cooling of the rod.
//Given
d=0.0254                  //m, diameter of steel rod
l=0.4                     //m, length of rod
T1=80                     //C, initial temp.
T2=30                     //C, ambient temp.
T3=35                     //c, temp. after cooling
rho=7800                  //kg/m^3 ,density of steel rod
cp=0.473                  //kj/kg C. specific heat

//Calculation
m=%pi/4*d^2*l*rho         //kg. mass of cylinder
A=%pi*d*l                 //m^2, area of cylinder
dt=T1-T2                  //c, instantaneous temp. difference
h=1.32*(dt/d)^0.25        //W/m^2 C, heat transfer coefficient
i=integrate('1/(T^(5/4))','T',5,50)
t=i/(3.306*A/(m*cp*10^3))
printf("The required time for cooling is %f hr",t/3600)
