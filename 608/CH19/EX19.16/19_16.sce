//Problem 19.16: Two wattmeters connected to a 3-phase motor indicate the total power input to be 12 kW. The power factor is 0.6. Determine the readings of each wattmeter.

//initializing the variables:
Pi = 12000; // in Watts
pf = 0.6; // power factor

//calculation:
//If the two wattmeters indicate Pi1 and Pi2 respectively
// Pit = Pi1 + Pi2
Pit = Pi
// Pid = Pi1 - Pi2
//power factor = 0.6 = cos(phi) 
phi = acos(pf)
Pid = Pit*tan(phi)/(3^0.5)
//Hence wattmeter 1 reads
Pi1 = (Pid + Pit)/2
//wattmeter 2 reads
Pi2 = Pit - Pi1

printf("\n\n Result \n\n")
printf("\n reading in each wattameter are %.2E W and %.2E W",Pi1,Pi2)