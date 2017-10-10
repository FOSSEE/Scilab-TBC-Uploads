//Variable declaration
mew0=4*%pi*10**-7;
H=9.27*10**-24;      //bohr magneton(ampere m**2)
beta=10**6;      //field(ampere/m)
k=1.38*10**-23;    //boltzmann constant
T=303;    //temperature(K)

//Calculation
mm=mew0*H*beta/(k*T);    //average magnetic moment(bohr magneton/spin)

//Result
printf('average magnetic moment is %0.3f *10**-3 bohr magneton/spin\n',(mm*10**3))