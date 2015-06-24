//Problem 19.15: Two wattmeters are connected to measure the input power to a balanced 3-phase load by the two-wattmeter method. If the instrument readings are 8 kW and 4 kW, determine (a) the total power input and (b) the load power factor.

//initializing the variables:
Pi1 = 8000; // in Watts
Pi2 = 4000; // in Watts

//calculation:
//Total input power
Pi = Pi1 + Pi2
phi = atan((Pi1 - Pi2)*(3^0.5)/(Pi1 + Pi2))
//Power factor
pf = cos(phi)

printf("\n\n Result \n\n")
printf("\n (a)power input is %.1E W",Pi)
printf("\n (b)power factor is %.3f",pf)