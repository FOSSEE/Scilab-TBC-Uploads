//Variable declaration:
kM = 0.0512                 //Thermal conductivity of methanol (cal/m.s°C)
B = 1.0/252.0               //Btu in a calorie
M = 0.3048                  //Meters in a feet
S = 3600                    //Seconds in an hour
C = 1.0/1.8                 //Degree celsius in a degree fahrenheit
 
//Calculation:
k = kM*B*M*S*C              //Thermal conductivity in English units (Btu/ft.h.°F)
 
//Result:
disp("Thermal coductivity in English units is:")
disp(k)
disp("Btu/ft.h.°F")
