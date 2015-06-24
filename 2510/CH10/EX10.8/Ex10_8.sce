//Variable declaration:
//From example:
h = 0.675                       //Free convection heat transfer coefficient (Btu/h.ft^2.°F)
A = 6.0*8.0                     //Area of plate (ft^2)
Ts = 120.0                      //Surface temperature of plate (°F)
Too = 60.0                      //Ambient temperature of nitrogen (°F)

//Calculation:
Q = h*A*(Ts-Too)                //Heat loss (Btu/h)
Q = round(Q * 10**-1)/10**-1

//Result:
printf("The heat loss is : %f  Btu/h .",Q)
printf(" The h obtained in the previous example differs, therefore, Q obtained here also differs from that given in book.")
