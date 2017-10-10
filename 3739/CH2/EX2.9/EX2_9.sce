//Chapter 2, Example 2.9, page 47
clc
//Initialisation
FSL=128                              //FSL in dB
Lb=135                               //Sum of FSL and medium loss Lm
Lc=5
Gt=30                                //transmitter gain in dB
Gr=30                                //reciever gain in dB
Pr=-60                               //received signal level

//Calculation
Lm=Lb-FSL                            //medium loss in dB
Lm1=10**(Lm*10**-1)                  //medium loss
Pt=Lc+Lb-Gt-Gr+Pr                    //power in dBm
Pt1=10**(Pt*10**-1)                  //power in watt      

//Result
printf("Medium Loss = %d",Lm1)
printf("\nPt = %.1f mW",(Pt1))
