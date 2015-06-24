//Variable declaration:
n = 1200.0                  //Flow rate of air in a molar flow rate (lbmol/min)
Cp = 0.26                   //Average heat capacity (Btu/lbmol.°F)
T1 = 200.0                  //Initial temperature (°F)
T2 = 1200.0                 //Final temperature (°F)

//Calculation:
DT = T2 - T1                //Change in temperature (°F)
Q = n*Cp*DT                 //Required heat rate (Btu/min)

//Result:
printf("The required heat rate is : %.2f x 10^5 Btu/min.",Q/10**5)
