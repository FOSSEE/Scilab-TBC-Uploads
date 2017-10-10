clear
//
//
//

//Variable declaration    
h=6.6*10^-34;        //planck's constant(J-sec)
m=9.1*10^-31;    //mass of electron(kg)
v=600;     //speed(m/sec)
a=0.005/100;     //accuracy(%)

//Calculations
deltav=v*a;       //uncertainity in speed(kg m/sec)
delta_px=m*deltav;       //uncertainity in momentum(kg m/sec)
deltax=h/delta_px;       //uncertainity in position of electron(m)

//Result
printf("\n uncertainity in position of electron is %0.5f m",deltax)
printf("\n answer in the book is wrong")
