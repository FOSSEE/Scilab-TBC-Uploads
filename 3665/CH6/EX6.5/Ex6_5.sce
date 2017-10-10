clc//
//
//

//Variable declaration
deltax=0.2*10^-10;      //distance(m)
h=6.626*10^-34;    //planck's constant

//Calculation
deltap=h/(2*%pi*deltax);    //uncertainity in momentum(kg m/s)

//Result
printf("\n uncertainity in momentum is %0.2f *10^-24 kg m/s",deltap*10^24)
