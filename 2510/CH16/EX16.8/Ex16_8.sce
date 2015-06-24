//Variable declaration:
t2 = 75.0                       //Temperature of water leaving the shell ( C)
t1 = 35.0                       //Temperature of water enteringing the shell ( C)
T2 = 75.0                       //Temperature of oil leaving the tube ( C)
T1 = 110.0                      //Temperature of oil entering the tube ( C)
m = 1.133                       //Mass flowrate of water (kg/s)
cp = 4180.0                     //Heat capacity of water (J/kg.K)
F = 0.965                       //Correction factor
U = 350.0                       //Overall heat transfer coefficient (W/m^2.K)

//Calculation:
Q = m*cp*(t2-t1)                //Heat load (W)
DT1 = T1-t2                     //Temperature driving force 1 ( C)
DT2 = T2-t1                     //Temperature driving force 2 ( C)
DTlm1 = (DT1-DT2)/log(DT1/DT2)+273.0  //Countercurrent log-mean temperature difference (K)
DTlm2 = F*DTlm1                 //Corrected log-mean temperature difference (K)
A = Q/(U*DTlm2)                 //Required heat transfer area (m^2)

//Result:
printf("The required heat-transfer area is : %.3f m^2.",A)
