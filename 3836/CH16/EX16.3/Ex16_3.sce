clear
//

//Initialisation
pf=0.75                          //power factor
S=1500                           //apparent power in W
V=240                             //Voltage in volts
P1 = 2000                         //apparent power
P2 = 1500                          //active power
Q = 1322                           //reactive power
I = 8.33                            //current in amp
f=50                                //frequency in hertz

//Calculation 
Xc=V**2/Q                        //reactive capacitance
C=1/(Xc*2*%pi*f)             //capacitance
I=S*V**-1                             //current
apf=S*pf                          //active power
//Result
printf("\n  Apparent Power, S = %d W",S)

printf("\n  Active Power, P = %d W",apf)

printf("\n  Reactive Power, Q = %d var",Q)

printf("\n  Current I = %.2f A",I)

