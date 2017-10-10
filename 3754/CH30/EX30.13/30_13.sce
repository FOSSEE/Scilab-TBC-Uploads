clear//

//Variables

gm = 4500.0 * 10**-6                   //Transconductance (in Ampere per volt)
RD = 3.0 * 10**3                       //Drain resistance (in ohm)
RL = 5.0 * 10**3                       //Load  resistance (in ohm) 
Vin = 100.0 * 10**-3                   //Input voltage (in volts)
ID = 2.0 * 10**-3                      //Drain current (in Ampere)

//Calculation

rL = RD * RL / (RD + RL)               //a.c. load resistance (in ohm)
vo = -gm * rL * Vin                    //Output voltage (in volts)   

//Result

printf("\n Output voltage is  %0.3f  V.",vo)
