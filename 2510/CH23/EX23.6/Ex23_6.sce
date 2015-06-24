//Variable declaration:
Q = 20000                   //Fuel input (Btu)
e = 1                       //Energy produced (kW.h)
Btu = 3412                  //Units Btu in 1 kW.h

//Calulation:
ER = Q/Btu                  //Energy requirement in 1990 (kW.h)
E = e/ER*100                //Efficiency of energy conversion (%)

//Result:
printf("The efficiency of energy conversion is : %.1f %%",E)
