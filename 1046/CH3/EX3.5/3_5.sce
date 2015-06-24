//Example 3.5
//calculate
//(a)effective thickness of air and liquid films.
//(b)the overall heat transfer coefficient based on i.d of pipe.
//(c)the overall heat transfer coefficient based on od of insulation.
//(d)the percentage of total resistance  offered by air film.
//(e)the rate of heat loss per meter length of pipe.
//(f)insulation skin temp.

//given
w1=8            //%, solubility of alcohol
w2=92           //%, solubility of water
k1=0.155        //W/m C, thermal conductivity of alcohol
k2=0.67         //W/m C thermal conductivity of water
ka=0.0263       //W/m C thermal conductivity of air
kw=45           //W/m Cthermal conductivity of pipe wall
ki=0.068        //W/m C , thermal cond. of glass
id=53*10^-3     //m, internal diameter of pipe
od=60*10^-3     //m, outer  diameter of pipe
t=0.04          //m, thickness of insulation
hi=800          //W/m^2 C, liquid film coefficient
ho=10           //W/m^2 C, air film coefficient
L=1             //m, length of pipe
T1=75           //C, initial temp.
T2=28           //C, ambient air temp.
//calculation
//(a)
km=(w1/100)*k1+(w2/100)*k2-0.72*(w1/100)*(w2/100)*(-(k1-k2))
deli=km/hi     //m, effective thickness of liquid film
delo=ka/ho     //m, effective thickness of air film
printf("effective thickness of air  is %f mm",deli*10^3)
printf("effective thickness of liquid films is %f mm.",delo*10^3)
//(b)
Ai=2*%pi*id/2*L      //m^2, inside area
ri=id/2              //m,inside radius of pipe
r_=od/2              //m, outside radius of pipe
ro=r_+t              //m, outer radius of insulation
Ao=2*%pi*ro*L        //m^2, outer area
//from eq. 3.11, overall heat transfer coefficient
Ui=1/(1/hi+(Ai*log(r_/ri))/(2*%pi*L*kw)+(Ai*log(ro/r_))/(2*%pi*L*ki)+Ai/(Ao*ho))
printf("the overall heat transfer coefficient based on i.d of pipe is %f W/m^2 C",Ui)

//(c)
//frim eq. 3.14
Uo=Ui*Ai/Ao  
printf("the overall heat transfer coefficient based on od of pipe is %f W/m^2 C",Uo)

//(d)
R=1/(Ui*Ai)          //C/W, total heat transfer resistance
Rair=1/(Ao*ho)       //C/W, heat transfer resistance of air film
p=Rair/R
printf("the percentage of total resistance  offered by air film. is %f percent",p*100)

//(e)
Q=Ui*Ai*(T1-T2)
printf("Rate of heat loss is %f W",Q)

//(f)
Ts=Uo*Ao*(T1-T2)/(ho*Ao)+T2
printf("insulation skin temp.is %f C",Ts)
