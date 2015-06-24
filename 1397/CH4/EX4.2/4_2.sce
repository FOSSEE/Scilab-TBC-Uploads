//clc();
clear;
//To determine intensity of magnetisation and magnetic flux density
ki=-0.5*10^-5;            //magnetic susceptibility
H=9.9*10^4;               //magnetic field of intensity in Amp/m
I=ki*H;
mew0=(4*%pi*10^-7);        //mew0 in H/m
B=mew0*H*(1+ki);
printf("intensity of magnetisation is %f amp/m",I);
printf("magnetic flux density is %f wb/m^2",B);

//answer in book is wrong
