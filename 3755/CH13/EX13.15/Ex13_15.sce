clear
//
//
//

//Variable declaration 
L=500/1000;     //length(km)
P0byPi=25/100;     //optical power

//Calculations
dB=-10*log10(P0byPi)/L;     //fibre loss(dB/km)

//Result
printf("\n fibre loss is %0.4f dB/km",dB)
