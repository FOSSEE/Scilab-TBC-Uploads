//Chapter 7, Example 7.2

clc
//Initialisation
s=2000                                  //apparent power
p=0.75                              //power factor
v=240                                //voltage
//Calculation

ap=s*p                                  //active power
phi=sqrt(1-(p**2))                      //phase angle in radians
q=s*phi                            //reactive power in var
i=s/v                                //current in ampere
 

//Results
printf("(a) Apparent Power, S = %d VA\n",s)
printf("(b) Active Power, P = %d W\n",ap)
printf("(c) Reactive Power, Q = %d var\n",q)
printf("(d) Current, I = %.2f A\n",i)
