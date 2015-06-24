//Variable declaration:
a = 1                           //Length of cross-section (m)
b = 0.25                        //Width of cross-section (m)
v = 1*10**-5                    //Kinematic viscosity of air (m^2/s)
Re = 2300.0                     //Reynolds Number
cm = 100                        //Cenitmeters in a meter

//Calculation:
Dh = 2*a*b/(a+b)                //Hydraulic diameter of duct (m)
V = Re*v/Dh*cm                  //Maximum air velocity (cm/s)

//Result:
printf("The maximum air velocity before the flow becomes turbulent is : %.1f cm/s.",V)
