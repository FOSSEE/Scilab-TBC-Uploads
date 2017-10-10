clear
//
//
//

//Variable declaration    
h=6.625*10^-34;        //planck's constant(J-sec)
m=0.05;         //mass(kg)
v=20;           //velocity(m/sec)
mp=1.67*10^-27;    //mass of proton(kg)
vp=2200;      //velocity of proton(m/sec)
me=9.11*10^-31;     //mass of electron(kg)
E=10*1.602*10^-19;      //kinetic energy(J)

//Calculations
lamda_ball=h/(m*v);        //de-broglie wavelength of ball(m)
lamda_p=h*10^10/(mp*vp);        //de-broglie wavelength of proton(angstrom)
lamda_e=h/(2*me*E);        //de-broglie wavelength of electron(m)

//Result
printf("\n de-broglie wavelength of ball is %e m",lamda_ball)
printf("\n de-broglie wavelength of proton is %0.2f angstrom",lamda_p)
printf("\n de-broglie wavelength of electron is %0.2f *10^14 m",lamda_e/10^14)
printf("\n answer for de-broglie wavelength of electron in the book is wrong")
