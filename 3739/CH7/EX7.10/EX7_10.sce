//Chapter 7, Example 7.10, page 331
clc
//Initialisation
Aa=15                                    //Transmitter antenna discrimination
Ab=25                                    //Receiver antenna discrimination
AD=110                                  //path in km                     
s=35                                    //fading in dB

//Calculation
CD=30                                       //path in km 
Ad=20*log10(AD*CD**-1)               //Distance discrimination

si=Aa+Ab+Ad                                //in dB
si2=si-s                                    //in dB

//Results
printf("(1) S/I = %.1f dB",si)
printf("\n(2) S/I = %.1f dB",si2)
