//Book - Power System: Analysis & Design 5th Edition
//Authors - J. Duncan Glover, Mulukutla S. Sarma, and Thomas J. Overbye
//Chapter - 2 ; Example 2.4
//Scilab Version - 6.0.0 ; OS - Windows


clc;
clear;
Eab=480*(cos(0*%pi/180)+%i*sin(0*%pi/180));                     //Line Voltage of the source in Volts
Zdel=30*(cos(40*%pi/180)+%i*sin(40*%pi/180));                   //Impedance of the delta load in Ohm
Zlineperphase=1*(cos(85*%pi/180)+%i*sin(85*%pi/180));           //Line Impedance in Ohm
Zstar=Zdel/3;                                                   //Impedance of delta load converted to star load in Ohm
[r theta]=polar(Eab);
Ebc=r*(cos(theta-120*%pi/180)+%i*sin(theta-120*%pi/180));
Eca=r*(cos(theta+120*%pi/180)+%i*sin(theta+120*%pi/180)); 
Ean=r*(cos(theta-30*%pi/180)+%i*sin(theta-30*%pi/180))/sqrt(3); //Phase voltage of the source in Volts
[r theta]=polar(Ean);
Ebn=r*(cos(theta-120*%pi/180)+%i*sin(theta-120*%pi/180));
Ecn=r*(cos(theta+120*%pi/180)+%i*sin(theta+120*%pi/180));
Ia=Ean/(Zlineperphase+Zstar);                                   //Line current in Amperes 
Ib=Ebn/(Zlineperphase+Zstar);
Ic=Ecn/(Zlineperphase+Zstar);
[r theta]=polar(Ia);
Iab=r*(cos(theta+30*%pi/180)+%i*sin(theta+30*%pi/180))/sqrt(3); //Phase current in Amperes
[r theta]=polar(Ib);
Ibc=r*(cos(theta+30*%pi/180)+%i*sin(theta+30*%pi/180))/sqrt(3);
[r theta]=polar(Ic);
Ica=r*(cos(theta+30*%pi/180)+%i*sin(theta+30*%pi/180))/sqrt(3);
EAB=Zdel*Iab;                                                   //Line voltage across the load in Volts
EBC=Zdel*Ibc;
ECA=Zdel*Ica;
printf('\nThe magnitude of line current IA is %.2f Ampere and its angle is %.2f degrees',abs(Ia),atand(imag(Ia),real(Ia)));
printf('\nThe magnitude of line current IB is %.2f Ampere and its angle is %.2f degrees',abs(Ib),atand(imag(Ib),real(Ib)));
printf('\nThe magnitude of line current IC is %.2f Ampere and its angle is %.2f degrees',abs(Ic),atand(imag(Ic),real(Ic)));
printf('\nThe magnitude of load current IAB is %.2f Ampere and its angle is %.2f degrees',abs(Iab),atand(imag(Iab),real(Iab)));
printf('\nThe magnitude of load current IBC is %.2f Ampere and its angle is %.2f degrees',abs(Ibc),atand(imag(Ibc),real(Ibc)));
printf('\nThe magnitude of load current ICA is %.2f Ampere and its angle is %.2f degrees',abs(Ica),atand(imag(Ica),real(Ica)));
printf('\nThe magnitude of load voltage EAB is %.2f Volts and its angle is %.2f degrees',abs(EAB),atand(imag(EAB),real(EAB)));
printf('\nThe magnitude of load voltage EBC is %.2f Volts and its angle is %.2f degrees',abs(EBC),atand(imag(EBC),real(EBC)));
printf('\nThe magnitude of load voltage ECA is %.2f Volts and its angle is %.2f degrees',abs(ECA),atand(imag(ECA),real(ECA)));
