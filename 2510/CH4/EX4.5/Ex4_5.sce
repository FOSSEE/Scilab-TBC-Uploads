//Variable declaration:
m1 = 1000                   //Flowrate data 1 (lb/min)
m2 = 1000                   //Flowrate data 2 (lb/min)
m4 = 200                    //Flowrate data 4 (lb/min)

//Calculations:
m5 = m1 + m2 - m4           //Flowrate data 5 (lb/min)
m6 = m2                     //Flowrate data 6 (lb/min)
m = m5 - m6                 //Flowrate of water lost in operation (lb/min)

//Result:
printf ("The amount of water lost by evaporation in the operation is %.0f lb/min",m)
