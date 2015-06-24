//Variable declaration:
s = 0.173*10**-8                        //Stefan-Boltzmann constant (Btu/h.ft^2.°R)
TH = 300.0+460.0                        //Absolute temperature of external surface (°R)
TC = 75.0+460.0                         //Absolute temperature of duct (°R)
//From Table 6.2:
AH = 0.622                              //External surface area of pipe (ft^2)
//From Table 11.2:
EH = 0.44                               //Emissivity of oxidized steel
AC = 4.0*1.0*1.0                        //External surface area of duct (ft^2)
EC = 0.23                               //Emissivity of galvanized zinc

//Calculation:
FE = 1.0/(1.0/EH+((AH/AC)*(1.0/EC-1.0))) //Emissivity correction factor
Q = FE*AH*s*(TH**4-TC**4)                //Net radiation heat transfer (Btu/h.ft)

//Result:
printf("The net radiation heat transfer is : %.2f Btu/h.ft^2.",Q)
printf("There is a calculation error in book.")
