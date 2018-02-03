clear
//
//
//

//Variable declaration
new=5.6*10**12    //frequency(Hz)
h=6.625*10**-34   //plank constant
kB=1.38*10**-23   //boltzmann constant
T=330             //temperature(K) 

//Calculation
x=h*new/(kB*T) 
E=h*new/(exp(x)-1)     //average energy of oscillator(joule)

//Result
printf("\n average energy of oscillator is %0.3f  *10**-21 joule",E*10**21)
printf("\n answer given in the book varies due to rounding off errors")
