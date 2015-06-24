//Variable declaration:
T1 = 210.0                          //Initial temperature of oil (.)
T2 = 170.0                          //Final temperature of oil (.)
T3 = 60.0                           //Surface temperature of oil (.)
m = 8000.0                          //Flow rate of oil inside tube (lb/h)
cp = 0.55                           //Heat capacity of oil (Btu/lb..)
U = 63.0                            //Overall heat teansfer coefficient (Btu.h.ft^2..)

//Calculation:
DT1 = T1-T3                         //Temperature difference 1 (.)
DT2 = T2-T3                         //Temperature difference 2 (.)
DTlm = (DT1-DT2)/log(DT1/DT2)       //Log mean temerature difference (.)
Q = m*cp*(T1-T2)                    //Heat transferred (Btu/h)
A = Q/(U*DTlm)                      //Heat transfer area (ft^2)

//Result:
printf("The required heat transfer area is : %.2f ft^2 .",A)
