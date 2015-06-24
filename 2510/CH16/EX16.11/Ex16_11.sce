//Variable declaration:
//From example 16.10:
U = 350.0                       //Over all heat transfer coefficient (W/m^2. C)
DTlm = 74.3                     //Log mean temperature driving force for 1-4 shell and tube exchanger ( C)
Q = 788800.0                    //Heat load (W)
Nt = 11.0                       //Number of tubes per pass
Np = 4.0                        //Number of passes
Di = 0.0229                     //Inside diameter of tube (m)
pi = %pi

//Calculation:
A = Q/(U*DTlm)                  //Heat transfer area required for heat exchanger (m^2)
N = Nt*Np                       //Total number of tubes
L = A/(pi*Di*N)                 //Tube length (m)

//Result:
printf("The heat transfer area required for the heat exchanger is : %.2f m^2 .",A)
printf("The length of the tubes required for the heat exchanger is : %.1f ft",L*3.28)
