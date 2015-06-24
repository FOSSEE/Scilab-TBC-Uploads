//Variable declaration:
T1 = 400.0                      //Temperature of fluid entering the shell ( F)
T2 = 250.0                      //Temperature of fluid leaving the shell ( F)
t1 = 100.0                      //Temperature of fluid entering the tube ( F)
t2 = 175.0                      //Temperature of fluid leaving the tube ( F)

//Calculation:
DT1 = T1 - T2                   //Temperature driving force 1 ( F)
DT2 = t2 - t1                   //Temperature driving force 1 ( F)
DTlm1 = ((DT1-DT2)/log(DT1/DT2))  //Log mean temperature driving force for ideal countercurrent heat exchanger ( F)
P = (t2-t1)/(T1 - t1)           //Dimensionless ratio P
R = (T1-T2)/(t2-t1)             //Dimensionless ratio R
//From figure 16.8:
F = 0.985                       //Correction factor
DTlm2 = F*DTlm1                 //Log mean temperature driving force for shell and tube exchanger ( F)

//Result:
printf("The log mean temperature difference between the hot fluid and the cold fluid is : %.1f F.",DTlm2)
