//Variable declaration:
t2 = 84.0                       //Temperature of water leaving the tube ( C)
t1 = 16.0                       //Temperature of water entering the tube ( C)
m1 = 10000.0/3600.0             //Mass flowrate of water (kg/s)
T2 = 94.0                       //Temperature of oil leaving the shell ( C)
T1 = 160.0                      //Temperature of oil entering the shell ( C)

//Calculation:
Tw = (t1+t2)/2.0                //Average bulk temperature of water ( C)
To = (T1+T2)/2.0                //Average bulk temperature of oil ( C)
//From table 16.1:
p1 = 987.0                      //Density of water (kg/m^3)
cp1 = 4176.0                    //Heat capacity of water (J/kg. C)
p2 = 822.0                      //Density of oil (kg/m^3)
Q = m1*cp1*(t2-t1)              //Heat load (W)
cp2 = 4820.0                    //Heat capacity of oil (J/kg. C)
m2 = Q/(cp2*(T1-T2))            //Mass flowrate of oil (kg/s)
DT1 = T2-t1                     //Temperature driving force 1 ( C)
DT2 = T1-t2                     //Temperature driving force 2 ( C)
DTlm1 = ((DT1-DT2)/log(DT1/DT2))  //Log mean temperature driving force for ideal countercurrent heat exchanger ( C)
P = (t2-t1)/(T1 - t1)           //Dimensionless ratio P
R = (T1-T2)/(t2-t1)             //Dimensionless ratio R
//From figure 16.7:
F = 0.965                       //Correction factor
DTlm2 = F*DTlm1                 //Log mean temperature driving force for 1-4 shell and tube exchanger ( C)

//Result:
printf("1. The heat load is : %.3f  MW .",Q/10**6)
printf("2. The countercurrent flow log mean temperature difference is : %.0f C .",DTlm1)
printf("3. The F correction factor and the corrected log mean temperature difference is : %.1f C .",DTlm2)
