//Variable declaration:
ADL1 = 2                        //Average daily load (MW)
R = 25/100                      //Reduction in electrical load (%)

//Calculation:
L = 1-R                         //New load fraction
ADL2 = ADL1*L                   //New average daily load (MW)
AR = ADL1-ADL2                  //Average reduction in electrical load (MW)

//Result:
printf("The new Average daily load for the plant is : %f MW.",ADL2)
printf("The average reduction in electrical load is : %f MW.",AR)
