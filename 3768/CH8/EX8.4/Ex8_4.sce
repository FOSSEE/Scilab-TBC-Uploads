//Example number 8.4, Page number 171

clc;clear;
close;

//Variable declaration
r=6.1*10**-11;     //radius of atom(m)
new=8.8*10**15;    //frequency(revolution/sec)
mew0=4*%pi*10**-7;
e=1.6*10**-19;    //charge(c)
//Calculation
i=e*new;      //current(amp)
B=mew0*i/(2*r);     //magnetic induction(web/m**2)
mew=i*%pi*r**2;     //dipole moment(amp m**2)
//Result
printf("magnetic induction is %.3f Wb/m^2",B)
printf("\n dipole moment is %.3e Amp-m^2",mew)
//answers in the book are wrong
