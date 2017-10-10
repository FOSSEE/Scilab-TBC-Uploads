clear//

//Variables

PZM = 500                         //Power rating of zener diode (in milli-watt)
VZ = 6.8                          //Zener voltage rating (in volts)

//Calculation

IZM = PZM / VZ                    //Maximum value of zener current (in milli-Ampere)

//Result

printf("\n THe value of IZM for the device is  %0.1f  mA.",IZM)
