clear//

//Variables

V = 6.0                  //voltage (in volts)
C = 2.0                  //Capacity of battery (in Ampere-hour)
P = 1.2                  //Power rating (in watt)

//Calculation

R = V**2 / P             //Resistance (in ohm)
I = V/R                  //Current  (in Ampere)
t = C/I                  //time (in hour)

//Result

printf("\n Battery will last for  %0.3f  hours.",t)
