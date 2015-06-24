//Variable declaration:
//From example 16.22:
t2 = 75.0                       //Temperature of water leaving the shell ( F)
t1 = 35.0                       //Temperature of water entering the shell ( F)
T2 = 75.0                       //Temperature of oil leaving the tube ( F)
T1 = 110.0                      //Temperature of oil entering the tube ( F)
U = 320.0                       //Overall heat transfer coefficient (W/m^2.K)
A = 19.5                        //Required heat transfer area (m^2)
Cmin = 4736.0                   //Minimum capacitance rate (W/K)

//Calculation:
DT1 = t2-t1                     //Actual water temperature change ( F)
DT2 = T1 - t1                   //Maximum water temperature change ( F)
E = DT1/DT2                     //Effectiveness
NTU = (U*A)/Cmin                //Number of transfer units

//Result:
printf("The effectiveness is : %.3f .",E)
printf("The NTU is : %.3f",NTU)
