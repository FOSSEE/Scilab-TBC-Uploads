clear//

//Variables

I = 40                      //Current (in milli-Ampere)
t = 15 * 10**-3             //time (in seconds)
CFS = 93                    //Circuit fusing rate (in Ampere-square second)

//Calculation

SCR = I**2 * t              //Surge in the device (in Ampere-square second) 

//Result

printf("\n Since value of SCR i.e.  %0.3f  A**2s is less than CFS i.e.  %0.3f  A**2s.",SCR,CFS)
printf("\n Therefore the device will not be destroyed.")
