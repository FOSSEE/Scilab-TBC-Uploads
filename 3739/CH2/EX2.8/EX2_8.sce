//Chapter 2, Example 2.8, page 45
clc
//Initialisation
Pt=10                                        //transmitter power in watt
Gt=5                                         //antenna power in dBm
Lt=2                                         //feeder loss in dB
d=8000                                       //distance in meter
pi=3.14                                      //pi
no=120*pi

//Calculation
EIRP=Pt+Gt-Lt 
x=EIRP*10**-1  
EIRP2=10**x                                  //Equivalent isotropic radiated power
Ed=sqrt(30*EIRP2)/d                     //Electric Field Intensity
W=(Ed**2)/(2*no)                             //power in watt

//Result
printf("EIRP = %.1f W",EIRP2)
printf("\n|Ed| = %.2f mV/m",(Ed*10**3))
printf("\n W = %.1f nW/m^2",(W*10**9))
