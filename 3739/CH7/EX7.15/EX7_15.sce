//Chapter 7, Example 7.14, page 344
clc
//Initialisation
ur=0.001                  //unavailability budget for hypothetical circuit
d=50                      //path-length in km
A=0.25                    //area conditions
B=1                       //area conditions
f=8                       //frequency in GHz


//Calculation
pw=ur*(d*(d*d)**-1)             //deep fading occurrence probability
po=6*10**-7*A*B*f*(d**3)        //fading occurrence probability of desirable link
FM=-log10(pw/po)*10        //fade margin

//Results
printf("Fade margin = %.1f dB",FM)
