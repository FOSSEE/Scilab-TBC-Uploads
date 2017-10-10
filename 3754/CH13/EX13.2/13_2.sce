clear//

//Variables

PZM = 500                             //Power rating of zener diode (in milli-watt)
df = 3.33                             //derating factor (in milli-watt)
T1 = 75                               //Temperature (in degree Celsius)
T2 = 50                               //Temperature (in degree Celsius)

//Calculation

Tdf = df * (T1 - T2)                  //Total derating factor (in milli-watt)
PZ = PZM - Tdf                        //Maximimum power dissipating for the device (in milli-watt)

//Result

printf("\n The maximum power dissipation for the device is  %0.3f  mW." ,PZ)
