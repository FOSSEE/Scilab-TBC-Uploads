//Example 11.2
//Page no. 488
//Calculate the thermal boundary layer thickness & 
//local heat transfer coefficient 0.75 m from the leading edge.

//Variable declaration
Ts=200           // C,temp. of air
Ta=30            //C, temp .of surface
Va=8             //m/s, velocity of air
d=0.75           //m, distant from leading edge

//Calculation
Tm=(Ts+Ta)/2     //C, Mean temp. of boundary layer
mu=2.5*10^-5    //m^2/s, viscosity
P=0.69           //prndatl no.
k=0.036          //W/m c, thermal conductivity
Re=d*Va/mu       //reynold no.
t=5*d/(Re^0.5*P^(1/3))           //m, thermal boundary layer thickness
printf("Thermal boundary layer thickness is %f mm \n",t*10^3)

N=(0.332*Re^(0.5)*P^(1/3))   //Nusslet no.
h=k*N/d                                     //heat transfer coefficent
printf("heat transfer coeff is %f W/m^2 C",h)
