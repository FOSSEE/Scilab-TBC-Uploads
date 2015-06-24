//Variable declaration:
//From example 19.1:
T1 = 24                         //Outside surface temperature ( C)
Ri = 0.0191                     //Insulation resistance (K/W)
Q = 1383                        //Revised heat transfer rate (Btu/h)

//Calculation:
T2 = T1-Q*Ri                    //Temperature at outer surface of insulation ( C)

//Result:
printf("The temperature at the outer surface of the insulation is : %.1f C .",T2)
