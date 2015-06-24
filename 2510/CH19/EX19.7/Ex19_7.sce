//Variable declaration:
D2 = 0.5/10**3                  //External diameter of needle (m)
h3 = 12                         //Heat transfer coefficient (W/m^2.K)
L = 1                           //Insulation thickness (m)
T1 = 95                         //Reactant temperature ( C)
T3 = 20                         //Ambient air temperature ( C)
k1 = 16                         //Thermal conductivity of needle (W/m.K)
k3 = 0.0242                     //Thermal conductivity of air (W/m.K)
D3 = 2/10**3                    //Diameter of rubber tube (m)

//Calculation:
r2 = D2/2                       //External radius of needle (m)
r3 = D3/2                       //Radius of rubber tube (m)
Rt1 = 1/(h3*(2*%pi*r2*L))        //Thermal resistance ( C/W)
Q1 = (T1-T3)/Rt1                //Rate of heat flow in the absence of insulation (W)
Bi = h3*D2/k1                   //Biot number 
Nu = h3*D2/k3                   //Nusselt number
R2 = log(r3/r2)                 //Thermal resistance of needle ( C/W)
R3 = 1/(h3*(2*%pi*r3*L))         //Thermal resistance of rubber tube ( C/W)
Rt2 = R2+R3                     //Total thermal resistance ( C/W)
Q2 = (T1-T3)/Rt2                //Rate of heat loss (W)

//Result:
printf("1. The rate of the heat loss from the hypodermic needle with the rubber insulation is : %.2f W .",Q1)
printf("   The rate of the heat loss from the hypodermic needle without the rubber insulation is : %.2f W .",Q2)
printf("2. The Biot number is : %f",Bi)
printf("   The nusselt number is : %.3f ",Nu)
