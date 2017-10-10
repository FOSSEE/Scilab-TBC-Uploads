//Chapter 17, Example 17.6
clc
//Initialisation
rd=50*100*3                           //resistance in ohm
gm=72*10**-3                           //in siemens
Rd=3.3*10**3                       //resistance in ohm
Rs=10**3                            //resistance in ohm



//Calculation
av=-Rd/Rs                          //votlage gain from eq 17.7
b=gm*Rd
c=gm*Rs
av1=-(b)/(1+(c)+((Rd+Rs)/rd))      //voltage gain from eq 17.8
av2=-(b)/(1+(c))                  //voltage gain from eq 17.9

//Results
printf("From Eq 17.7, Gain = %.1f\n",av)
printf("From Eq 17.8, Gain = %.3f\n",av1)
printf("From Eq 17.9, Gain = %.3f\n",av2)
