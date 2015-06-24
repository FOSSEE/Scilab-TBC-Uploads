// chapter 9
// example 9.26
// fig. Ex.9.26(a) and Ex. 9.26(b)
// Find the rms load current, load-power and thyristor ratings
// page-628-630
clear;
clc;
// given
Edc=600; // in V (source voltage)
R=15; // in ohm (resistance per phase)
alpha1=120, alpha2=180; // in degree
// calculate
// part-a
Ip=Edc/(2*R); // calculation of load current amplitude
Irms=sqrt((1/(2*%pi))*Ip^2*(integrate('1','theta',0,(alpha1*(%pi/180)))+integrate('1','theta',(alpha2*(%pi/180)),(5*%pi/3)))); // calculation of rms load current
P0=3*Irms^2*R; // calculation of load-power
I_T_rms=sqrt(Ip^2/3); // calculation of thyristor rms current
printf("\nFor %.f degree conduction, \n",alpha1);
printf("\nThe rms load current is \t Irms=%.2f A",Irms);
printf("\nThe load-power is \t\t P0=%.f kW",P0*1E-3);
printf("\nThe thyristor rms current is \t I_T_rms=%.1f A",I_T_rms);
// part-b
R0=R+R/2; // calculation of load on invertor
I1=Edc/R0; // calculation of current I1
I2=I1/2; // calculation of current I2
Irms1=sqrt((1/(2*%pi))*(I2^2*integrate('1','theta',0,(alpha1*%pi/180))+I1^2*integrate('1','theta',(alpha1*%pi/180),(4*%pi/3))+I2^2*integrate('1','theta',(4*%pi/3),(2*%pi)))); // calculation of rms load current Irms1
Irms2=I1/2; // calculation of rms load current Irms2
P0=3*Irms1^2*R; // calculation of load-power
printf("\n\nFor %.f degree conduction, \n",alpha2);
printf("\nThe rms load currents are \t Irms1=%.2f A \t Irms2=%.2f A",Irms1,Irms2);
printf("\nThe load-power is \t\t P0=%.2f kW",P0*1E-3);
// Note: 1. The wrong values of angle theta has been used in the book for calculating the rms load current in both cases. But the answer in the book is right. So I have used correct values and the answer is same as in the book with little variation due to precise calculation