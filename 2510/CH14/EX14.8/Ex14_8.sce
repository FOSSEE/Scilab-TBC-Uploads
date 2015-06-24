//Variable declaration:
T1 = 138.0                  //Temperature of oil entering the cooler (°F)
T2 = 103.0                  //Temperature of oil leaving the cooler (°F)
t1 = 88.0                   //Temperature of coolant entering the cooler (°F)
t2 = 98.0                   //Temperature of coolant leaving the cooler (°F)

//Calculation:
//For counter flow unit:
DT1 = T1 - t2               //Temperature difference driving force at the cooler entrance (°F)
DT2 = T2 - t1               //Temperature difference driving force at the cooler exit (°F)
DTlm1 = (DT1 - DT2)/(log(DT1/DT2))   //LMTD (driving force) for the heat exchanger (°F)
//For parallel flow unit:
DT3 = T1 - t1               //Temperature difference driving force at the cooler entrance (°F)
DT4 = T2 - t2               //Temperature difference driving force at the cooler exit (°F)
DTlm2 = (DT3 - DT4)/(log(DT3/DT4))   //LMTD (driving force) for the heat exchanger (°F)

//Result:
printf("The LMTD for counter-current flow unit is : %.1f °F.",DTlm1)
printf("The LMTD for parallel flow unit is : %.1f °F.",DTlm2)
