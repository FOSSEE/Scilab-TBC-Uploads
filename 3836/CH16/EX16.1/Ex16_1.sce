clear
//

//Initialisation
V=50                     //Voltage
I=5                     //Current in Ampere r.m.s
phase=30                 //in degrees

//Calculation 
S=V*I                            //apparent power
pf=cos(phase*%pi/180)    //power factor
apf=S*pf                          //active power

//Result
printf("\n (a) Apparent power, S = %d VA",S)

printf("\n (b) Power Factor = %.3f",pf)

printf("\n (c) Active Power, P = %.1f",apf)

