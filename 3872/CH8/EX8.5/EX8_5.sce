//Book - Power System: Analysis & Design 5th Edition
//Authors - J. Duncan Glover, Mulukutla S. Sarma, and Thomas J. Overbye
//Chapter - 8 ; Example 8.5
//Scilab Version - 6.0.0 ; OS - Windows

clc;
clear;

Zn = %i*10;                            //generator neutral impedance in ohm
Zgo = %i*1;                            //generator zero sequence impedance in ohm
Zg1 = %i*15;                           //generator positive sequence impedance in ohm
Zg2 = %i*3;                            //generator negative sequence impedance in ohm
Zl1 = 0.087+(%i*0.99);                 //line impedace in ohm
Zdel = 22.98+%i*(19.281);              //impedance of the delta load in ohm
V1=(415.69-(%i*240))/sqrt(3);          //RMS line to neutral phase voltage of AC supply in Volts
I1 = V1/(Zl1+((1/3)*Zdel));            //sequence component of line current in A 

printf('\nThe sequence component of the line current Ia is %.4f amperes and its angle is %.4f degree ',abs(I1), atand(imag(I1), real(I1)));
