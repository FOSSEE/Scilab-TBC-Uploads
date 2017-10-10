//Chapter 6, Example 6.5, page 239
clc

//Initialisation
f=450*10**6                                 //frequency in Hz
q1=1.282                                    //cumulative distribution value
q2=1.645                                    //cumulative distribution value

//Calculation
sg=3.8+1.6*log10(450)                  //standard deviation
fm1=q1*sg                                   //fade margin
fm2=q2*sg                                  //fade margin
fm=fm2-fm1                                 //gain


//Results
printf("Antenna gain = %.2f dB",fm)
