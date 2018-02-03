clear
//
//
//

//Variable declaration
h=6.63*10**-34   //plank constant
kB=1.38*10**-23  //boltzmann constant
T=1500           //temperature(K) 
c=3*10**8        //velocity of light(m/sec)
lamda=6000*10**-10   //wavelength(m)

//Calculation
new=c/lamda
x=h*new/(kB*T) 
y=exp(x)-1     //average energy of oscillator(joule)
Ulamda=8*%pi*h*new/(y*lamda**4)    //energy density per unit wavelength(Jm-4)

//Result
