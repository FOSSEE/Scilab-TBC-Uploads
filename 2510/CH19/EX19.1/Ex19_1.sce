//Variable declaration:
H = 2.5                         //Height of wall (m)
W = 4                           //Width of wall (m)
h = 11                          //Convective heat transfer coefficient (W/m^2.K)
T1 = 24                         //Outside surface temperature ( C)
T3 = -15                        //Outside air temperature ( C)
L = 7.62/10**3                  //Insulation thickness (m)
k = 0.04                        //Thermal conductivity of wool (W/m.K)

//Calculation:
A = H*W                         //Heat transfer area (m^2)
Q = h*A*(T1-T3)                 //Heat transfer rate (W)
Ri = L/(k*A)                    //Insuation resistance (K/W)
Rc = 1/(h*A)                    //Convective resitance (K/W)
R = Ri+Rc                       //Total resistance (K/W)
Qt = (T1-T3)/R                  //Revised heat transfer rate (Btu/h)
 
//Result:
printf("1. The heat transfer rate without insulation is : %.0f W .",Q)
printf("Or, the heat transfer rate without insulation is : %.0f Btu/h .",Q*3.412)
printf("2. The revised heat transfer rate with insulation is : %.0f W .",Qt)
printf("Or, the revised heat transfer rate with insulation is : %.0f Btu/h .",Qt*3.412)
printf("There is a calculation mistake in book.")
