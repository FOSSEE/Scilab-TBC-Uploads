//Example 5.1
//Calculate the rate of heat loss .
//Given
T1=65                    //C, furnace temp.
T2=25                    //C, ambient temp.
h=1.5                    //m, height of door
w=1                      //m, width of door
Tf=(T1+T2)/2             //c, average air film temp.
//Properties of air at Tf
Pr=0.695                 //Prandtl no.
mu=1.85*10^-5            //m^2/s, viscosity
beeta=1/(Tf+273)         //K^-1. coefficient of volumetric expension
k=0.028                  //W/m C, thermal conductivity
g=9.8                    //m/s^2, gravitational constant
Grl=g*beeta*(T1-T2)*h^3/(mu^2)        //Grashof no.
Ral=Grl*Pr                            //Rayleigh no.
//Nusslet no.
Nul=(0.825+(0.387*(Ral)^(1/6))/(1+(0.492/Pr)^(9/16))^(8/27))^2 
hav=Nul*k/h              //average heat transfer coefficient
Ad=h*w                   //m^2, door area
dt=T1-T2                 //temp. driving force
q=hav*Ad*dt              //W,rate of heat loss
printf("The rate of heat loss is %f W",q)
