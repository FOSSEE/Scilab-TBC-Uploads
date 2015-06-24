//Variable declaration:
TH = 140.0+460.0                    //Absolute outside temperature of pipe (ft^2)
TC = 60.0+460.0                     //Absolute temperature of surrounding atmosphere (ft^2)
A = 10.0                            //Area of pipe (ft^2)
E = 0.9                             //Emissivity of pipe

//Calculation:
Q = E*A*0.173*((TH/100.0)**4-(TC/100.0)**4) //Heat loss due to radiation (Btu/h)
Q = round(Q*10**-1)/10**-1

//Result:
printf("The heat loss due to radiation is : %f Btu/h.",Q)
