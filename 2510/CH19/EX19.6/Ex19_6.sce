//Variable declaration:
//From example 19.5:
Q = -4435.2                     //Heat rate with insulation (W)
R2 = 0.00198                    //Convection thermal resistance ( C/W)
T3 = 26                         //Surrounding air temperature ( C)
h = 21                          //Convective heat transfer coefficient between the air and the surface (W/m^2.K)
k = 0.0433                      //Thermal conductivity of cork board insulation (W/m.K)
L = 0.00825                     //Required insulation thickness (m)

//Calculation:
T2 = T3+Q*R2                    //Interface temperature ( C) (part 1)
Bi = h*L/k                      //Biot number (part 2)

//Result:
printf("1. The interface temperature is : %.2f C .",T2)
printf("2. The Biot number is : %.0f ",Bi)
printf("3. Theoretical part.")
