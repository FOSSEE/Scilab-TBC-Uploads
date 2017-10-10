clear//

//Variables

ACL = 200.0                  //Closed loop voltage gain
Vout = 8.0                   //Output voltage (in volts)

//Calculation

Vin = - Vout / ACL           //Input a.c. voltage (in volts)

//Result

printf("\n Maximum allowable input voltage (Vin) is  %0.3f  mV." ,abs(Vin * 10**3))
