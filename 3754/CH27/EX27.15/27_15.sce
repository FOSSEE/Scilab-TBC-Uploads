clear//

//Variables 

Pcdc = 10.0              //Power rating of amplifier (in watt)
n = 0.785                //Maximum overall efficiency           

//Calculation

PT = 2 * Pcdc            //Total power dissipation of two transistors (in watt)
Poac = (PT * n) / (1-n)  //Maximum power output (in watt)

//Result

printf("\n Maximum power output is  %0.2f  W.",Poac)
