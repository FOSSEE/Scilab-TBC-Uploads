//Variable declaration:
//From example 12.9:
Ts1 = 102.0                         //Original surface temperature (°C)
Ts2 = 103.0                         //New surface temperature (°C)
Tsat = 100.0                        //Saturation temperature (°C)

//Calculation:
DTe1 = (Ts1 - Tsat)                 //Original excess temperature (°C)
DTe2 = (Ts2 - Tsat)                 //New excess temperature (°C)

//Result:
printf("The original excess temperature is: DTe = %f °C .",DTe1)
printf("The new excess temperature is: DTe = %f °C .",DTe2)
if ((DTe1 < 5) & (DTe2 < 5)) then
    printf("The assumption of the free convection mechanism is valid since DTe < 5°C.")
end
