clc;
//Example 4.1
//Page no 118

disp("Given: For and AM DSBFC modulator with a carrier frequency Fc=100kHz and a maximum modulating signal frequency of Fm(max)=5kHz.");

//solution

Fc=100*(10^3);
Fm=5*(10^3);
fm=3*(10^3);

//(a)

disp("(a)The lower sideband extends from the lowest possible lower side frequency to the carrier frequency or ");

lsb=(Fc-Fm); 

disp("kHz",(Fc/(10^3)),"kHz to",(lsb/(10^3)),"LSB = ");

disp("The upper sideband extends from the carrier frequency to the highest possible upper side frequency is ");

usb=(Fc+Fm);

disp("kHz",(usb/(10^3)),"kHz to",(Fc/(10^3)),"USB = ");

//(b)

disp("(b)The bandwidth is equal to the difference between the maximum upper side frequency and the minimum lower side frequency. ");

b=2*Fm;

disp("kHz",(b/(10^3)),"B = ");

//(c)

disp("(c)The upper side frequency is the sum of the carrier and modulating frequency.");

Fu=Fc+fm;

disp("kHz",(Fu/(10^3)),"Fusf = ");

disp("The lower side frequency is the difference between the carrier and modulating frequency.");

Fl=Fc-fm;

disp("kHz",(Fl/(10^3)),"Flsf = ");

//(d)

disp("(d)The output frequency spectrum is shown in figure.");
