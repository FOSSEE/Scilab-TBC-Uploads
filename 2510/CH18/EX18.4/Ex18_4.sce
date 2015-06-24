//Variable declaration:
U1 = 240                    //Overall heat transfer coefficient for first effect (Btu/h.ft^2. F)
U2 = 200                    //Overall heat transfer coefficient for second effect (Btu/h.ft^2. F)
U3 = 125                    //Overall heat transfer coefficient for third effect (Btu/h.ft^2. F)
A1 = 125                    //Heating surface area in first effect (ft^3)
A2 = 150                    //Heating surface area in second effect (ft^3)
A3 = 160                    //Heating surface area in third effect (ft^3)
T1 = 400                    //Condensation stream temperature in the first effect ( F)
T2 = 120                    //Vapor leaving temperature in the first effect ( F)

//Calculation:
R1 = 1/(U1*A1)              //Resistance across first effect
R2 = 1/(U2*A2)              //Resistance across second effect
R3 = 1/(U3*A3)              //Resistance across third effect
R = R1+R2+R3                //Total resistance
DT1 = (R1/R)*(T1-T2)        //Temperature drop across the heating surface in the first effect ( F)

//Result:
printf("The temperature drop across the heating surface in the first effect is : %.0f F .",DT1)
