clear
//
//
//

//Variable declaration
c=3*10**8               //velocity of light(m/sec)
lamda=632.8*10**-9      //wavelength(m)
h=6.626*10**-34         //planck's constant(Jsec)
t=1                     //time(sec)
P=2.3*10**-3            //power(W)
sa=1*10**-6             //spot area(m**2)

//Calculation
new=c/lamda             //frequency(Hz)
n=P*t/(h*new)           //number of photons emitted(per sec) 
Pd=P/sa                 //power density(kW/m**2)

//Result
printf("\n number of photons emitted is %0.2f  *10**15 photons/second",n/10**15)
printf("\n power density is %0.3f  kW/m**2",Pd/10**3)
