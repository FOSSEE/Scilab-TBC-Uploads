//Variable declaration:
S = 3/4                         //Tube size (in)
BWG = 16                        //Birmingham Wire Gauge number (gauge)

//calculation:
//From table 6.3, we get:
ID = 0.620                      //Internal diameter of tube (in)
WT = 0.065                      //Wall thickness of tube (in)
OD = ID+2*WT                    //Outside diameter of tube (in)
EA = 0.1963                     //External area per foot (ft)

//Result:
printf("The inside diameter is : %f in",ID)
printf("The wall thickness is : %f in",WT)
printf("The outside diamater is : %f in",OD)
printf("The external area per foot per foot : %f ft",EA)
