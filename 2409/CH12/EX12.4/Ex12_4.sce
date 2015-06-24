
//Variable Declaration
FSL=207   //Free space loss(dB)
RFL=1.5   //receiver feeder loss(dB)
AA=0.5    //Atmospheric Absorption loss(dB)
AML=0.5   //Antenna Alignment loss(dB)

//Calculation

LOSSES=FSL+RFL+AA+AML   //Total link loss (dB)

//Results

printf("The total link loss is %.1f dB", LOSSES)


