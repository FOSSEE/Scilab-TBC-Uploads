//Variable declaration:
//From example 9.1:
R = 0.0398                      //Theral resistance (°F.h/Btu)
Btu = 3.412                     //Btu/h in a watt
C = 1.8                         //Change in degree fahrenheit for a degree change in celsius
K = 1                           //Change in degree celsius for a unit change in Kelvin

//Calculation:
Rc = R*Btu/C                    //Thermal resistance in degree cesius per watt (°C/W)
Rk = Rc/K                       //Thermal resistance in Kelvin per watt (K/W)

//Result:
printf("The thermal resistance in °C/W is : %.3f  °C/W.",Rc)
printf("The thermal resistance in K/W is : %.3f  K/W.",Rk)
