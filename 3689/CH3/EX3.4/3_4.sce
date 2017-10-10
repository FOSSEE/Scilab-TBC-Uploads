////Variable Declaration
cpsubysy = 1000           //Specific heat ration of surrounding and system
Tpreci = 0.006             //Precision in Temperature measurement, °C

//Calcualtions
dtgas = -cpsubysy*(-Tpreci)

//Results
printf("\n Minimum detectable temperature change of gas +-%4.1f °C",dtgas)

