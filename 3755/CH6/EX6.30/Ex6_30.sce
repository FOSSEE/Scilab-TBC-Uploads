clear
//
//
//

//Variable declaration    
h=6.63*10^-34;        //planck's constant(J-sec)
e=1.6*10^-19;        //charge of electron(c)
delta_t=2.5*10^-14*10^-6;       //life time(s)

//Calculations
deltaE=h*10^-3/(4*%pi*delta_t*e);       //minimum energy(keV)

//Result
printf("\n minimum energy is %0.5f keV",deltaE)
printf("\n answer in the book varies due to rounding off errors")
