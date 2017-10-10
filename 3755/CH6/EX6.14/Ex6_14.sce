clear
//
//
//

//Variable declaration    
h=6.62*10^-34;        //planck's constant(J-sec)
m=9.1*10^-31;    //mass of electron(kg)
mp=1836*m;       //mass of photon(kg)
c=3*10^8;       //velocity of light(m/sec)
e=1.6*10^-19;        //charge of electron(c)

//Calculations
E=m*c^2;      //energy(J)
v=sqrt(2*E/mp);      //velocity(m/sec)
lamda=h*10^10/(mp*v);        //de-broglie wavelength of proton(angstrom)

//Result
printf("\n de-broglie wavelength of proton is %0.4f angstrom",lamda)
printf("\n answer in the book is wrong")
