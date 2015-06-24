//Variable declaration:
Ts = 100.0                      //Steam temperature at 1 atm (°C)
T1 = 25.0                       //Initial fluid temperature (°C)
T2 = 80.0                       //Final fluid temperature (°C)

//Calculation:
DT1 = Ts - T1                   //Temperature difference driving force at the fluid entrance (°C)
DT2 = Ts - T2                   //Temperature driving force at the fluid exit (°C)
DTlm = (DT1 - DT2)/log(DT1/DT2) //Log mean temperature difference (°C)

//Result:
printf("The LMTD is : %.1f °C.",DTlm)
printf("There is a calculation mistake regarding final result in book.")
