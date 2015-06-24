//Variable declaration:
k = 0.022                       //Thermal conductivity of glass wool (Btu/h.ft. F)
T1 = 400                        //Inside wall temperature ( F)
T2 = 25                         //Outside wall temperature ( C)
L = 3/12                        //Length of insulation cover (ft)

//Calculation:
T_2 = T2*(9/5)+32               //Outside wall temperature in fahrenheit scale ( F)
QbyA = k*(T1-T_2)/L              //Heat flux across the wall (Btu/h.ft^2)

//Result:
printf("The heat flux across the wall is : %.1f Btu/h.ft^2 .",QbyA)
