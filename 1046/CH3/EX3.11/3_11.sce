//Example 3.11
//Calculate 
//(a) Is there any thermal contact resistance at the interface between the layer?
//(b) if so calculate the contact resistance and
//express it in contact heat transfer coefficient
//(c) Calculate the temp. jump.

//Given
id=90*10^-2       //m, internal diameter of steel
od=110*10^-2      //m, outer diameter of steel
Ti=180            //C, inside temp. of steel
To=170            //C, outside temp. of steel
k=37             //W/m C, thermal conductivity of alloy
Q=5.18*10^3       //W, Rate of heat loss

//calculation
ri=id/2           //m, inside radius of shell
ro=od/2           //m, outside radius of shell
r_=0.5            //m, boundary between the layers
L=1               //m, length of shell
//Rate of heat transfer in the absence of contact resistance
Q1=2*%pi*L*k*(Ti-To)/(log(ro/ri))             
printf("Rate of heat transfer in the absence of contact resistance is %f KW\n",Q1/1000)
printf("The actual rate of heat loss is 5.18kW is much less than this value.\n So there is a thermal contact resistance at the interface between the layers \n")
 
//(b)
Ri=(log(r_/ri)/(2*%pi*L*k))  //C/W, Resistance of inner layer
Ro=(log(ro/r_)/(2*%pi*L*k))  //C/W, Resistance of outer layer
Rc=((Ti-To)/(Q))-(Ri+Ro)     //C/W, contact resistance
printf("The contact resistance is %f C/W \n",Rc)
Ac=2*%pi*L*r_                //m^2, area of contact surface of shell
hc=1/(Ac*Rc)                 //W/m^2 c, contact heat transfer coefficient
printf("contact heat transfer coefficient is %f W/m^2 C \n",hc)

//(c)
dt=Q/(hc*Ac)
printf("The temprature jump is %f C",dt)
 
