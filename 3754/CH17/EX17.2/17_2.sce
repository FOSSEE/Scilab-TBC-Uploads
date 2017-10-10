clear//

//Variables

SCR=75.0;I2t=75.0;
IS = 100.0                  //Current (in Ampere)

//Calculation

tmax = I2t / IS**2          //Maximum allowable time (in seconds)

//Result

printf("\n Maximum allowable time is  %0.3f  ms.",tmax * 10**3)
