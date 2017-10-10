//Chapter 7, Example 7.3

clc
//Initialisation
s=2000                                  //apparent power
p=0.75                              //power factor
v=240                                //voltage
pi=3.14                               //pi
f=50                                  //frequency

//Calculation

ap=s*p                                  //active power
phi=sqrt(1-(p**2))                      //phase angle in radians
q=s*phi                            //reactive power in var
i=s/v                                //current in ampere
xc=-v**2/q                             //capacitive reactance in ohm
c=1/(xc*2*pi*f)                         //capacitance in farad
s1=ap                                    //new apparent power 
i2=s1/v                                  //new current in ampere

//Results
printf("(a) Apparent Power, S = %d VA\n",s1)
printf("(b) Active Power, P = %d W\n",ap)
printf("(c) Reactive Power, Q = %d var\n",q)
printf("(d) Current, I = %.2f A\n",i2)
