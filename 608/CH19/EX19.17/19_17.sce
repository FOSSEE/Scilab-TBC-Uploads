//Problem 19.17: Two wattmeters indicate 10 kW and 3 kW respectively when connected to measure the input power to a 3-phase balanced load, the reverse switch being operated on the meter indicating the 3 kW reading. Determine (a) the input power and (b) the load power factor.

//initializing the variables:
Pi1 = 10000; // in Watts
Pi2 = -3000; // in Watts

//calculation:
//Total input power
Pi = Pi1 + Pi2
phi = atan((Pi1 - Pi2)*(3^0.5)/(Pi1 + Pi2))
//Power factor
pf = cos(phi)

printf("\n\n Result \n\n")
printf("\n (a)power input is %.2E W",Pi)
printf("\n (b)power factor is %.3f",pf)