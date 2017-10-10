//Chapter 7, Example 7.8, page 322
clc

//Initialisation
A=99.8                                      //in percent
l=1250                                      //radio link in km
C=155*10**6                                 //in bps
T=24*60*60                                  //Total measurement time

//Calculation
U=100-A
u=U/100
ue=u*l/2500
uep=ue*0.3                              //propagation unavailability value
M=C*uep*T*10**-3                        //number of errored bits due to propagation

//Results
printf("Maximum delay bit error per day = %d bits per day",M)
