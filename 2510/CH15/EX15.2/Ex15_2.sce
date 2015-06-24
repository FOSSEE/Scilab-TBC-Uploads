//Variable declaration:
Q = 12000.0                     //Heat transfer rate (Btu/h)
U = 48.0                        //Overall heat coefficient (Btu/ft^2.h..)
DTlm = 50.0                     //Log mean temperature difference (.)

//Calculation:
A = Q/(U*DTlm)                  //Area of exchanger (ft^2)

//Result:
printf("The area of the exchanger is : %.0f ft^2 .",A)
