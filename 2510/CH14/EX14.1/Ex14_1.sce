//Variable declaration:
scfm = 20000.0                  //Volumetric flow rate of air at standard conditions (scfm)
H1 = 1170.0                     //Enthalpy at 200°F (Btu/lbmol)
H2 = 14970.0                    //Enthalpy at 2000°F (Btu/lbmol)
Cp = 7.53                       //Average heat capacity (Btu/lbmol.°F)
T1 = 200.0                      //Initial temperature (°F)
T2 = 2000.0                     //Final temperature (°F)

//Calculation:
n = scfm/359.0                  //Flow rate of air in a molar flow rate (lbmol/min)
DH = H2 - H1                    //Change in enthalpy (Btu/lbmol)
DT = T2 - T1                    //Change in temperature (°F)
Q1 = n*DH                       //Heat transfer rate using enthalpy data (Btu/min)
Q2 = n*Cp*DT                    //Heat transfer rate using the average heat capacity data (Btu/min)

//Result:
printf("The heat transfer rate using enthalpy data is : %.2f x 10^5 Btu/min.",Q1/10**5)
printf("The heat transfer rate using the average heat capacity data is : %.2f  x 10^5 Btu/min.",Q2/10**5)
