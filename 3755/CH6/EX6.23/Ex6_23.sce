clear
//
//
//

//Variable declaration    
h=6.62*10^-34;        //planck's constant(J-sec)
m0=9*10^-31;    //mass of electron(kg)
v=3*10^7;     //velocity of electron(m/sec)
c=3*10^8;     //velocity of light(m/sec)

//Calculations
deltax_min=h*10^10*sqrt(1-(v^2/c^2))/(4*%pi*m0*v);       //smallest possible uncertainity in position of electron(angstrom)

//Result
printf("\n smallest possible uncertainity in position of electron is %0.0f angstrom",deltax_min)
