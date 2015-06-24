//Example 5.2
//Calculate the steady state temp. of the plate.
//Given
T1=60                    //C, plate temp.
T2=25                    //C, ambient temp.
h=1
w=1                      //m, width of door
q=170                    //W, rate of heat transfer
Tf=(T1+T2)/2             //c, average air film temp.
//Properties of air at Tf
Pr=0.7                 //Prandtl no.
mu=1.85*10^-5            //m^2/s, viscosity
beeta=1/(Tf+273)         //K^-1. coefficient of volumetric expension
k=0.028                  //W/m C, thermal conductivity
g=9.8                    //m/s^2, gravitational constant

//Calculation
A=h*w                    //m^2, plate area
P=2*(h+w)                //m,perimeter of plate 
L=A/P                    //m characteristic length
Grl=g*beeta*(T1-T2)*L^3/(mu^2)      //Grashof no.
Ral=Grl*Pr                          //Rayleigh no.
//Nusslet no.
Nul=0.54*(Ral)^(1/4)                //Nusslet no.
hav=Nul*k/L                        //average heat transfer coefficient
Ts=q/(hav*A)+T2
printf("the steady state temp. of the plate is %f C",Ts)
