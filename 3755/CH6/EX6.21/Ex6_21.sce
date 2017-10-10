clear
//
//
//

//Variable declaration    
h=6.63*10^-34;        //planck's constant(J-sec)
m0=9.1*10^-31;    //mass of electron(kg)
deltax=0.1*10^-10;       //uncertainity in position of electron(m)

//Calculations
delta_p=h/deltax;       //uncertainity in momentum(kg m/sec)
delta_v=delta_p/m0;      //uncertainity in velocity(m/sec)

//Result
printf("\n uncertainity in momentum is %e kg m/sec",delta_p)
printf("\n uncertainity in velocity is %0.3f *10^7 m/sec",delta_v/10^7)
