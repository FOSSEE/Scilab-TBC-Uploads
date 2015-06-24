clc();
clear;

//Calculating the magnetisation of paramagnetic salt

//(C=mew0*M*T)/B.
//Therefore M=(C*B)/(mew0*T)
C=2*10^-3;            //C is curies constant
B=0.4;                //applied magnetic field T
mew0=4*%pi*10^-7;
T=300;                //temperature in kelvin
M=(C*B)/(mew0*T)     //M is magnetisation
printf("%f A/m",M);