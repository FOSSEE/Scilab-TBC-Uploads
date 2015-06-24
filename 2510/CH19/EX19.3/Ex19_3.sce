//Variable declaration:
//From example 19.1:
h = 11                          //Convective heat transfer coefficient (W/m^2.K)
L = 7.62/10**3                  //Insulation thickness (m)
k = 0.04                        //Thermal conductivity of wool (W/m.K)

//Calculation:
Bi = h*L/k                      //Biot number

//Result:
printf("The Biot nmuber is : %.1f ",Bi)
