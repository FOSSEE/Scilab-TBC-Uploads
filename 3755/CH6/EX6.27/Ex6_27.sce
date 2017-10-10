clear
//
//
//

//Variable declaration    
h=6.62*10^-34;        //planck's constant(J-sec)
m=10^-6;    //mass of electron(kg)
deltav=5.5*10^-20;     //speed(m/sec)

//Calculations
delta_p=m*deltav;       //uncertainity in momentum(kg m/sec)
deltax=h/(4*%pi*delta_p);       //uncertainity in position of dust particle(m)

//Result
printf("\n uncertainity in position of dust particle is %0.2f *10^-10 m",deltax*10^10)
