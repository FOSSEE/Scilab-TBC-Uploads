//Variable declaration:
//From example 16.5:
P1 = 0.30                        //Dimensionless ratio P
R1 = 1.67                        //Dimensionless ratio R
//From example 16.6:
P2 = 0.30                        //Dimensionless ratio P
R2 = 1.67                        //Dimensionless ratio R

//Calculation:
//Applying Equation 16.27:
F1 = 0.92                        //Correction Factor
//Applying Equation 16.33:
F2 = 0.985                       //Correction Factor
//From example 16.6:
LMTD1 = 59.4                      //Log mean temperature driving force 1 for ideal countercurrent heat exchanger ( F)
LMTD2 = 108.0                     //Log mean temperature driving force 2 for ideal countercurrent heat exchanger ( F)
DTlm1 = F1*LMTD1                  //Log mean temperature driving force 1 for shell and tube exchanger ( F)
DTlm2 = F2*LMTD2                  //Log mean temperature driving force 2 for shell and tube exchanger ( F)

//Result:
printf("The log mean temperature difference for real system (in example 16.5) is : %.2f F.",DTlm1)
printf("The log mean temperature difference for real system (in example 16.6) is : %.1f F .",DTlm2)
