clear//

//Variables 

RL = 16.0                    //Load resistance (in ohm)
R1L = 10.0 * 10**3           //Effective resistance (in ohm)

//Calculation

a = (R1L / RL)**0.5          //Turns ratio

//Result

printf("\n Turns ratio is  %0.3f : 1.",a)
