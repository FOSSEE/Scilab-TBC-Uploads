//Variable declaration:
T1 = 500.0                      //Temperature of hot fluid entering the heat exchanger (°F)
T2 = 400.0                      //Temperature of hot fluid exiting the heat exchanger (°F)
t1 = 120.0                      //Temperature of cold fluid entering the heat exchanger (°F)
t2 = 310.0                      //Temperature of cold fluid exiting the heat exchanger (°F)

//Calculation:
DT1 = T1 - t2                   //Temperature difference driving force at the heat exchanger entrance (°F)
DT2 = T2 - t1                   //Temperature difference driving force at the heat exchanger exit (°F)
DTlm = (DT1 - DT2)/(log(DT1/DT2))   //LMTD (driving force) for the heat exchanger (°F)

//Result:
printf("The LMTD (driving force) for the heat exchanger is : %.0f  °F.",DTlm)
