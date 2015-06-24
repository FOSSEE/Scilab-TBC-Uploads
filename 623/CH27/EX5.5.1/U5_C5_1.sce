//function for calculating the wave number
function[wave]=F(j)
    wave=B*j*(j+1);
endfunction
    
//variable initialization
r=1.21*10^-10;                                                                  //internuclear distance (meter)
m=2.7*10^-26;                                                                   //mass of oxygen atom (kg)
h=6.626*10^-34;                                                                 //Plank's constant (joule second)
c=3*10^8;                                                                       //speed of light (meter/second)

//(a) moment of inertia
mu=m/2;                                                                         //reduced mass (kg)
I=mu*r^2;                                                                       //moment of inertia (kg m^2)

//(b) rotational constant
B=h/(8*%pi^2*I*c);                                                              //rotational constant (m-1)

//(c) wave number
waveno=F(1)-F(0);                                                               //wave no. of the line corresponding to the transition J=0 to J=1 (m-1)

printf("\n(a) I = %.3e kg m^2\n(b) B = %.1f m-1\n(c) wave number = %.0f m-1",I,B,waveno);
