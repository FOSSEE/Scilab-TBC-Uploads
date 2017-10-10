clear
//
//
//

//Variable declaration
mew0=4*%pi*10**-7
H=9.27*10**-24      //bohr magneton(ampere m**2)
beta1=10**6      //field(ampere/m)
k=1.38*10**-23    //boltzmann constant
T=303    //temperature(K)

//Calculation
mm=mew0*H*beta1/(k*T)    //average magnetic moment(bohr magneton/spin)

//Result
printf("\n average magnetic moment is %0.2f  *10**-3 bohr magneton/spin",mm*10**3)
