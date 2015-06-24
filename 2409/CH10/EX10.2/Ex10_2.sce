
//Variable Declaration
Rb=61   //Transmission rate (Mb/s)
ENR=9.5 //Required Energy to noise ratio(dB)

//Calculation

Rb=10*log10(61*10**6)  //Converting Transmission rate to dB
CNR=Rb+ENR  //Carrier to noise ratio

//Results
printf("Required Carrier to noise ratio is %.2f dB", CNR)
