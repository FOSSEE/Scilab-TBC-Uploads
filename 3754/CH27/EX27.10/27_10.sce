clear//

//Variables 

RL = 8.0                    //Load resistance (in ohm)
a = 10.0                    //Turns ratio
ICQ = 500.0 * 10**-3        //Collector current (in Ampere)

//Calculation

R1L = a**2 * RL             //Effective load (in ohm)
Poac = 1.0/2* ICQ**2 * R1L  //Maximum power delieverd (in watt)

//Result

printf("\n The maximum power delievered to load is  %0.3f  W.",Poac)
