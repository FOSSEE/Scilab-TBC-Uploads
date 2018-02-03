clear
//
//
//

//Variable declaration
c=2.998*10**8               //velocity of light(m/sec)
lamda=0.5*10**-9            //wavelength(m)
h=6.626*10**-34             //planck's constant(Jsec)
Kb=1.381*10**-23            //boltzmann constant
T=1000                      //temperature(K)

//Calculation
new=c/lamda                 //operating frequency(Hz)
new=new/10**3               //operating frequency(kHz)
new=(new/10**14)*10**14

x=h*new/(Kb*T)
B21byA21=1/(exp(x)-1)  //ratio of emission  

//Result
printf("\n ratio of emission is %0.1f  *10**-13",B21byA21*10**13)
