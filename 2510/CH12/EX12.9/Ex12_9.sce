//Variable declaration:
Qs1 = 9800.0                        //Heat flux (W/m^2)
Ts1 = 102.0                         //Original surface temperature (°C)
Ts2 = 103.0                         //New surface temperature (°C)
Tsat = 100.0                        //Saturation temperature (°C)

//Calculation:
h1 = Qs1/(Ts1-Tsat)                 //Original heat transfer coefficient (W/m^2.K)
DT1 = (Ts1 - Tsat)                  //Original excess temperature (°C)
DT2 = (Ts2 - Tsat)                  //New excess temperature (°C)
n = 0.25                            //Value of n for laminar flow
h2 = h1*(DT2/DT1)**(n)              //New heat transfer coefficient (W/m^2.K)
Qs2 = h2*(Ts2-Tsat)                 //New heat flux (W/m^2)

//Result:
printf("The new heat flux is : %.0f W/m^2.K .",Qs2)
