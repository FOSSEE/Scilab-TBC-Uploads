
//Variable Declaration

EIRP=56   //Equivalent Isotropically radiated power(dBW)
BO=6      //Output Backoff(dB)
TFL=2     //Transmitter feeder loss(dB)
GT=50     //Antenna gain(dB)

//Calculation
PTWTA=EIRP-GT+TFL   //Power output of TWTA(dBW)
PTWTAS=PTWTA+BO     //Saturated power output of TWTA(dBW)

//Result
printf("Power output of the TWTA required for full saturated EIRP is %.f dBW",PTWTAS)
