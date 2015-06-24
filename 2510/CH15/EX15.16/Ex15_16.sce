//Variable declaration:
Ud = 2220.0                 //Dirty overall heat transfer coefficient (W/m^2.K)
A = 0.1217                  //Heat transfer area (m^2)
Cw = 264.0                  //Capacitance rate of water (W/K)

//Calculation:
NTU = (Ud*A)/Cw             //Number of transfer units of the exchanger

//Result:
printf("The number of transfer units (NTU) of the exchanger is : %.2f .",NTU)
