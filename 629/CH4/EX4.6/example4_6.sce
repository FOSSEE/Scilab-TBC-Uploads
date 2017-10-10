clear
clc
//Example 4.6 VELOCITY IN A VENTURI SECTION
h1=1; //[m]
h2=0.5; //[m]
g=9.81; //[m/s^2]
//h1-h2=(V2^2-V1^2)/(2*g), V2=2*V1
V1=sqrt(2*g*(h1-h2)/3) //[m/s]
V2=2*V1 //[m/s]
printf("\nThe velocity in the throat section = %.2f m/s.\n",V2)