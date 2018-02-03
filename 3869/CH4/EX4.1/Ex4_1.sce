clear
//
//
//

//Variable declaration
c=3*10**8               //velocity of light(m/sec)
lamda=6943*10**-10      //wavelength(m)
h=6.626*10**-34         //planck's constant(Jsec)
Kb=1.38*10**-23         //boltzmann constant
T=300                   //temperature(K)

//Calculation
new=c/lamda          //frequency(Hz)
a=h*new/(Kb*T)
N1byN2=exp(a)   //relative population

//Result
printf("\n relative population is %0.3f  *10**30",N1byN2/10**30)
printf("\n answer given in the book is wrong")
