clear
//
//
//

//Variable declaration    
h=6.62*10^-34;        //planck's constant(J-sec)
m=1.67*10^-27;    //mass of proton(kg)
vc=3*10^8;      //velocity of light(m/sec)

//Calculations
v=vc/20;         //velocity of proton(m/sec)
lamda=h/(m*v);        //de-broglie wavelength of proton(m)

//Result
printf("\n de-broglie wavelength of proton is %0.2f *10^-14 m",lamda*10^14)
