
// Example 7.5.5  page 7.25

clc;
clear;

h=6.626d-34;    //plank's constant
c=3d8;      //speed of light
eta=70/100; //quantum efficiency
I=3d-6;     //photocurrent 
E=1.8d-19;  //energy of photns
q=1.6d-19;  //charge of electron

lamda=h*c/E;   //computing wavelength
R=eta*q*lamda/(h*c);    //computing responsivity
Popt=I/R;       //computing optical power
lamda=lamda*10^6;
Popt=Popt*10^6;

printf("\nWavelength is %.2f micrometer.\nResponsivity is %.3f A/W.\nIncident optical power required is %.3f microWatt.",lamda,R,Popt);

//answer of Popt in the book is calculated as 4.823, deviation of 0.002
