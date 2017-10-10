clear//

//Variables

VO=5.0;VL=5.0;
IL = 20.0                         //Load current (in milli-Ampere)
PZmax = 500.0                     //Maximum power dissipation in zener (in milli-watt)
VSmin = 9.0                       //Minimum source voltage (in volts)
VSmax = 15.0                      //Maximum source voltage (in volts)
VZ = 5
IZ =20
//Calculation

IZmax = PZmax / VZ                //Maximum zener current (in milli-Ampere)
ISmax = IL + IZ                   //Maximum input current (in milli-Ampere)
RSmin = (VSmax - VZ)/(IZmax + IL) //Minimum value of regulating resistance (in kilo-ohm)
IZ = (VSmin - VZ)/ RSmin - IL     //Minimum value of zener current           

//Result

printf("\n Input varies from the normal 12 v within the range of +- 3 V.")
printf("\n Zener current vary from  %0.3f  mA to  %0.3f  mA.",IZ,IZmax)
printf("\n For safety purpose RS should be 220 ohm.")
