clear
//

//Initialisation
pf=0.75                          //power factor
S=2000                           //apparent power in VA
V=240                             //Voltage in volts

//Calculation 
apf=S*pf                          //active power
sin1=sqrt(1-(pf**2)) 
Q=S*sin1                         //Reactive Power
I=S*V**-1                          //Current
//Result
printf("\n  Apparent Power, P = %d W",S)

printf("\n  Active Power, P = %d W",apf)

printf("\n  Reactive Power, Q = %d var",Q)

printf("\n  Current I = %.2f A",I)

