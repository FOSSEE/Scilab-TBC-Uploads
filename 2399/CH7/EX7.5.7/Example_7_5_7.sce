// Example 7.5.7 
clc;
clear;
h=6.626d-34;    //plank's constant
c=3d8;      //speed of light
eta=65/100; //quantum efficiency
I=2.5d-6;     //photocurrent 
E=1.5d-19;  //energy of photns
q=1.6d-19;  //charge of electron
lamda=h*c/E;   //computing wavelength
R=eta*q*lamda/(h*c);    //computing responsivity
Popt=I/R;       //computing optical power
lamda=lamda*10^6;
Popt=Popt*10^6;
printf("\nWavelength is %.3f micrometer.\nResponsivity is %.3f A/W.\nIncident optical power required is %.1f microWatt.",lamda,R,Popt);
//answer of R(responsivity) in the book is calculated as 0.694 A/W, deviation of 0.001.
