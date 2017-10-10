clc
//Intiallising varialbles
L= 468 // Measured lenght in meters
RFWS = 1/(20*100)  // R.F of wrong scale used
RFCS = 1/(40*100)  // R.F of correct scale used
//Calculations of variables
CL= (RFWS/RFCS)*L  // Corrected lenght in meters
//Results
printf (' Corrected Length =%f m',CL)
