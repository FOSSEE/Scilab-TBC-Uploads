//Variable declaration:
Ts = 106.0                      //Surface temperature (°C)
Tsat = 100.0                    //Saturation temperature (°C)

//Calculation:
DTe = Ts-Tsat                   //Excess temperature (°C)
//From table 12.5:
C1 = 5.56                       //Constant C1
n1 = 3.0                        //Constant n1
C2 = 1040.0                     //Constant C2
n2 = 1.0/3.0                    //Constant n2
P = 1.0                         //Absolute pressure (atm)
Pa = 1.0                        //Ambient absolute pressure (atm)

//Calculation:
h1 = C1*DTe**n1*(P/Pa)**0.4     //Boiling water heat transfer coefficient (W/m^2)
Qs1 = h1*DTe                    //Surface flux (W/m^2)
h2 = C2*DTe**n2*(P/Pa)**0.4     //Second Boiling water heat transfer coefficient (W/m^2)
Qs2 = h2*DTe                   //Second Surface flux (W/m^2) 

//Result:
   
if (Qs1/10**3 > 15.8 & Qs1/10**3 < 236) then
    printf("The boiling regime is : %.1f kW/m^2 .",Qs1/10**3)
    printf("The heat transfer coefficient is : %.0f W/m^2 .",h1)
elseif (Qs1/10**3 < 15.8) then
    printf("The boiling regime is : %.2f kW/m^2 .",Qs2/10**3)
    printf("The heat transfer coefficient is : %.0f  W/m^2.",h2)
end
