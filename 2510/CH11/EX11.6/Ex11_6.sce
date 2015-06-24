//Variable declaration:
T1 = 1200.0+460.0                       //Absolute temperature of wall 1 (°R)
T2 = 800.0+460.0                        //Absolute temperature of wall 2 (°R)

//Calculation:
//From equation 11.23:
X = 0.173*((T1/100.0)**4-(T2/100.0)**4) //Heat removed from colder wall (Btu/h.ft^2)

//Result:
printf("The heat removed from the colder wall to maintain a steady-state is : %.0f Btu/h.ft^2.",X)
