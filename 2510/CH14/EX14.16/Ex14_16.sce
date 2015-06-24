
//Variable declaration:
hw = 200.0                      //Water heat coefficient (Btu/h.ft^2.°F)
ho = 50.0                       //Oil heat coefficient (Btu/h.ft^2.°F)
hf = 1000.0                     //Fouling heat coefficient (Btu/h.ft^2.°F)
DTlm = 90.0                     //Log mean temperature difference (°F)
A = 15.0                        //Area of wall (ft^2)

//Calculation:
X = 1.0/hw+1.0/ho+1.0/hf        //Equation 14.34 for constant A
U = 1.0/X                       //Overall heat coeffocient (Btu/h.ft^2.°F)
Q = U*A*DTlm                    //Heat transfer rate (Btu/h)
Q = round(Q*10**-1)/10**-1

//Result:
printf("The heat transfer rate is : %f Btu/h.",Q)
