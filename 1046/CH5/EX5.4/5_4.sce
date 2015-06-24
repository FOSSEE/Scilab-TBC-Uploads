//Example 5.4
//Calculate the rate of heat loss by free convection per meter length of pipe.
//given
id=78*10^-3                    //m, internal diameter
od=89*10^-3                    //m, outer diameter
Pg=15                          //kg/cm^2, gauge pressure
t=2*10^-2                      //m, thickness of preformed mineral fibre
k=0.05                         //W/m C. thermal conductivity
Ta=25                          //C, ambient air temp.
Pr=0.705                       //Prandtl no.
//assume
Ts=50                          //C, skin temp.
l=1                            //m, length
Ti=200.5                        //C, initial temp.
rs=od/2+t                      //m, outer radius of insulation
ri=od/2                        //m, inner radius of insulation
//Rate of heat transfer through insulation per meter length of pipe
Q=2*%pi*l*k*(Ti-Ts)/(log(rs/ri))           //W
//properties of air at taken at the mean film temp.
Tf=(Ta+Ts)/2                  //C
mu=1.76*10^-5                 //m^2/s. viscosity
beeta=(1/(Tf+273))            //K^-1, coefficient of volumetric expansion
k1=0.027                      //W/m C, thermal conductivity
ds=2*rs                       //m, outer dia. of insulated pipe
g=9.8                         //m/s^2, gravitational constant
Grd=g*beeta*(Ts-Ta)*ds^3/(mu^2)        //Grashof no.
Rad=Grd*Pr                             //Rayleigh no.
//from eq. 5.9
//Nusslet no. 
Nu=(0.60+(0.387*(Rad)^(1/6))/(1+(0.559/Pr)^(9/16))^(8/27))^2 
hav=Nu*k1/ds                 //W/ m^2 C, average heat transfer coefficient
Ts=(Q/(%pi*ds*l*hav))+Ta     //C, skin temp.
//revised calculation by assuming
Ts1=70                      //C, skin temp.
//Rate of heat transfer through insulation
Q1=2*%pi*l*k*(Ti-Ts1)/(log(rs/ri))
Tf1=(Ta+Ts1)/2                //C, average aie mean film temp.
mu1=1.8*10^-5                  //m^2/s. viscosity
beeta1=(1/(Tf1+273))            //K^-1, coefficient of volumetric expansion
k1=0.0275                     //W/m C, thermal conductivity
Pr1=0.703                     //Prandtl no.
Grd1=g*beeta1*(Ts1-Ta)*ds^3/(mu1^2)        //Grashof no.
Rad=Grd1*Pr1                               //Rayleigh no.
//from eq. 5.9
// average heat transfer coefficient, in //W/ m^2 C,
hav1=(0.60+(0.387*(Rad)^(1/6))/(1+(0.559/Pr)^(9/16))^(8/27))^2*(k1/ds)
Ts2=(Q1/(%pi*ds*l*hav1))+Ta
//again assume skin temp.=74
Ts2=74                      //C, assumed skin temp.
Q3=2*%pi*l*k*(Ti-Ts2)/(log(rs/ri))
printf("the rate of heat loss by free convection per meter length of pipe. is %f W",Q3)
