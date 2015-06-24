//Variable declaration:
m = 1200                            //mass flowrate of solution (kg/s)
c = 0.99                            //Heat capacity of brine solution (Btu/lb. F)
DT1 = 70                            //Temperature approach at the pipe entrance ( F)
DT2 = 51.6                          //Temperature difference at the pipe exit ( F)

//Calculation:
Q = m*c*(DT1-DT2)                   //Heat transfer rate (Btu/h)
DTlm = (DT1-DT2)/log(DT1/DT2)       //Log mean temperature difference ( F)
Q1 = round(Q*10**-1)/10**-1

//Result:
printf("1. The rate of heat transfer is : %f Btu/h.",Q1)
printf("Or, the rate of heat transfer is : %.0f W.",Q/3.412)
printf("2. The log mean temperature difference is : %.1f F.",DTlm)
printf("Or, the log mean temperature difference is : %.1f C.",DTlm/1.8)
