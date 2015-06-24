//Example 3.7
//what is the heat imput to the boiling.
//Given
id=2.5*10^-2              //m, internal diameter of glass tube
t=0.3*10^-2               //m, thickness of wall
l=2.5                     //m, length of nichrome wire
L=0.12                    //m, length of steel covered with heating coil
Re=16.7                   //ohm, electrical resistance
ti=2.5*10^-2              //m, thickness of layer of insulation
kg=1.4                    //W/m C, thermal conductivity of glass
ki=0.041                  //W/m C, thermal conductivity of insulation
T1=91                     //C, boiling temp. of liquid
T2=27                     //C, ambient temp.
ho=5.8                    //W/m ^2 C outside air film coefficient
V=90                      //V,  voltage

//Calculation
Rc=Re*l                   //ohm, resistance of heating coil
Q=V^2/Rc                  //W, rate of heat generation
ri=id/2                   //m, inner radius of glass tube
r_=ri+t                   //m, outer radius of glass tube
ro=r_+ti                   //m,outer radius of insulation
//heat transfer resistance of glass wall
Rg=log(r_/ri)/(2*%pi*L*kg)
//combined resistance of insulation and outer air film
Rt=log(ro/r_)/(2*%pi*L*ki)+1/(2*%pi*ro*L*ho)
//Rate of heat input to the boiling liquid in steel=Q1=(Ts-T1)/Rg
//Rate of heat loss through insulation ,Q2=(Ts-To)/(Rt)
//Q1+Q2=Q
Ts=(Q+ T1/Rg +T2/Rt)/(1/Rg +1/Rt)
Q1=(Ts-T1)/Rg
Q2=Q-Q1
printf("the heat imput to the boiling.is %f W",Q1)
