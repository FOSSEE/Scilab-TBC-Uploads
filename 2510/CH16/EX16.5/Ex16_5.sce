//Variable declaration:
//From figure 16.13, for ideal countercurrent heat exchanger:
T1 = 150.0                      //Inlet temperature of hot fluid ( F)
T2 = 100.0                      //Outet temperature of hot fluid ( F)
t1 = 50.0                       //Inlet temperature of cold fluid ( F)
t2 = 80.0                       //Outet temperature of hot fluid ( F)
//From figure 16.14, for shell and tube exchanger:
T_1 = 50.0                      //Inlet temperature of cold fluid ( F)
T_2 = 80.0                      //Outet temperature of hot fluid ( F)
t_1 = 150.0                     //Inlet temperature of hot fluid ( F)
t_2 = 100.0                     //Outet temperature of hot fluid ( F)

//Calculation:
DT1 = T1 - t2                      //Temperature driving force 1 ( F)
DT2 = T2 - t1                       //Temperature driving force 1 ( F)
DTlm1 = ((DT1-DT2)/log(DT1/DT2))  //Log mean temperature driving force for ideal countercurrent heat exchanger ( F)
P = (t2-t1)/(T1 - t1)           //Dimensionless ratio P
R = (T1-T2)/(t2-t1)             //Dimensionless ratio R
//From figure 16.7:
F = 0.925                       //Correction Factor
DTlm2 = F*DTlm1                 //Log mean temperature driving force for shell and tube exchanger ( F)

//Result:
printf("The log mean temperature difference for ideal system is : %.1f F.",DTlm1)
printf("The log mean temperature difference for real system is : %.2f F.",DTlm2)
