clear
//
//
//

//Variable declaration
c=3*10^8;   //velocity of matter wave(m/s)
h=6.62*10^-34;    //plank's constant(Js)
lamda=6940*10^-10;    //wavelength(m)
P=1;     //power(J)

//Calculation
n=P*lamda/(h*c);    //number of ions

//Result
printf("\n number of ions is %0.2f *10^18",n/10^18)
