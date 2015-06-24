//Variable declaration:
FV = 1.0                            //Correction factor
//From example 11.9:
FE = 0.358                          //Emissivity correction factor
TH = 300.0+460.0                    //Absolute temperature of external surface (°R)
TC = 75.0+460.0                     //Absolute temperature of duct (°R)
AH = 0.622                          //Area of pipe (ft^2)
s = 0.173*10**-8                    //Stefan-Boltzmann constant

//Calculation:
Q = FV*FE*AH*s*(TH**4-TC**4)        //Heat transfer rate (Btu/h.ft)

//Result:
printf("The heat transfer rate is : %.2f Btu/h.ft",Q)
printf("Since, Q obtained in (11.9) is 96.96 Btu/h.ft, the solution does not match with book.")
