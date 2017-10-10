clear
//
//
//

//Variable declaration    
h=6.63*10^-34;        //planck's constant(J-sec)
m=9.1*10^-31;    //mass of electron(kg)
v=3.5*10^7;     //speed(cm/sec)
a=0.0098/100;     //accuracy(%)

//Calculations
deltav=v*a;       //uncertainity in speed(kg m/sec)
delta_p=m*deltav;       //uncertainity in momentum(kg m/sec)
deltax=h/(4*%pi*delta_p);       //uncertainity in position of electron(m)

//Result
printf("\n uncertainity in position of electron is %0.4f *10^-8 m",deltax*10^8)
printf("\n answer in the book is wrong")
