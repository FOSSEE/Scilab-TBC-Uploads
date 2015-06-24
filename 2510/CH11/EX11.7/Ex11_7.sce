//Variable declaration:
s = 0.173                       //Stefan-Boltzmann constant (Btu/h.ft^2.°R)
EH = 0.5                        //Energy transferred from hotter body (Btu/h.ft^2)
EC = 0.75                       //Energy transferred to colder body (Btu/h.ft^2)
TH = 1660.0                     //Absolute temperature of hotter body (°R)
TC = 1260.0                     //Absolute temperature of colder body (°R)

//Calculation:
E = s*((TH/100.0)**4-(TC/100.0)**4)/((1.0/EH)+(1.0/EC)-1.0) //Net energy exchange per unit area (Btu/h.ft^2)
E = round(E*10**-1)/10**-1

//Result:
printf("The net energy exchange per unit area is : %f Btu/h.ft^2.",E)
