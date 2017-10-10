clear
//
//
//

//Variable declaration    
delta_t=10^-12;       //life time(s)
hby2pi=1.054*10^-34;     
e=1.6*10^-19;        //charge of electron(c)

//Calculations
deltaE=hby2pi/(2*e*delta_t);       //uncertainity in energy(eV)

//Result
printf("\n uncertainity in energy is %0.1f *10^-4 eV",deltaE*10^4)
