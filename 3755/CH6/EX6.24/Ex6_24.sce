clear
//
//
//

//Variable declaration    
h=6.6*10^-34;        //planck's constant(J-sec)
m=9*10^-31;    //mass of electron(kg)
deltax_max=10*10^-10;     //length of box(m)

//Calculations
deltavx_min=h/(deltax_max*m);       //minimum uncertainity in velocity of electron(m/s)

//Result
printf("\n minimum uncertainity in velocity of electron is %0.0f *10^5 m/s",deltavx_min/10^5)
