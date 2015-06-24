//Variable declaration:
m = 8000.0                  //Rate of oil flow inside the tube (lb/h)
Cp = 0.55                   //Heat capacity of oil (Btu/lb.°F)
T1 = 210.0                  //Initial temperature of oil (°F)
T2 = 170.0                  //Final temperature of oil (°F)
t = 60.0                    //Tube surface temperature (°F)

//Calculation:
DT = T2 - T1                //Change in temperature (°F)
Q = m*Cp*DT                 //Heat transferred from the heavy oil (Btu/h)
DT1 = T1 - t                //Temperature difference driving force at the pipe entrance (°F)
DT2 = T2 - t                //Temperature difference driving force at the pipe exit (°F)
DTlm = (DT1 - DT2)/(log(DT1/DT2))   //LMTD (driving force) for the heat exchanger (°F)

//Result:
printf("The heat transfer rate is : %.0f Btu/h.",Q)
printf("The LMTD for the heat exchanger is : %.0f °F.",DTlm)
