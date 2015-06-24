//Variable declaration:
CpM = 0.61                  //Heat capacity of methanol (cal/g.°C)
G = 454                     //Grams in a pound
B = 1.0/252.0               //Btu in a calorie
C = 1.0/1.8                 //Degree celsius in a degree fahrenheit
 
//Calculation:
Cp = CpM*G*B*C              //Heat capacity in English units (Btu/lb.°F)
 
//Result:
disp("Heat capacity in English units is: ")
disp(Cp)
disp(" Btu/lb.°F")
