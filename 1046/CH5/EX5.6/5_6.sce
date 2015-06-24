//Example 5.6
//Calculate the rate of heat gain by the cooler surface.
//Given
L=1.6                  //m,height of enclosure
w=0.04                 //m, width of enclosure
b=0.8                  //m, breath
T1=22                  //C,surface temp.
T2=30                  //C, wall temp.
Tm=(T1+T2)/2           //C, Mean air temp.
Pr=0.7                 //Prandtl no.
//fpr air at 26 C
beeta=1/(Tm+273)       //K^-1. coefficient of volumetric expension
mu=1.684*10^-5         //m^2/s,  viscosity
k=0.026                //W/m C, thermal conductivity
alpha=2.21*10^-5       //m^2/s, thermal diffusity
g=9.8                  //m/s^2, gravitational constant
Raw=g*beeta*(T2-T1)*w^3/(mu*alpha)        //Rayleigh no.
Nuw=0.42*(Raw)^0.25*Pr^0.012*(L/w)^-0.3   //Nusslet no.
h=Nuw*k/w                                 //kcal/h m^2 C, heat transfer coefficient
q=h*(T2-T1)*(L*b)                         //W,the rate of heat transfer
printf("the rate of heat  transfer is %f W",q)
