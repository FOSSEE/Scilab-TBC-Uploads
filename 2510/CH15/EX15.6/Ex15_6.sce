//Variable declaration:
T1 = 140.0                          //Initial temperature of hot water (.)
T2 = 110.0                          //Final temperature of hot water (.)
T3 = 60.0                           //Initial temperature of cold water (.)
T4 = 90.0                           //Initial temperature of cold water (.)
DTlm2 = 50.0                        //Log mean temerature difference for countercurrent flow, a constant (.) (part 2)
m = 100.0*60                        //Water flow rate (lb/h)
cp = 1.0                            ////Heat capacity of water (Btu/lb..)
U = 750.0                           //Overall heat teansfer coefficient (Btu.h.ft^2..)

//Calculation:
DT1 = T1-T3                         //Temperature difference 1 (.) (part 1)
DT2 = T2-T4                         //Temperature difference 2 (.)
DTlm1 = (DT1-DT2)/log(DT1/DT2)      //Log mean temerature difference (.)
Q = m*cp*(T1-T2)                    //Heat transferred (Btu/h)
Ap = Q/(U*DTlm1)                     //Heat transfer area for parallel flow (ft^2)
Ac = Q/(U*DTlm2)                    //Heat transfer area for counter flow (ft^2)

//Result:
printf("1. The double pipe co-current flow is : %.2f ft^2 .",Ap)
printf("1. The double pipe countercurrent flow is : %.2f ft^2 .",Ac)
