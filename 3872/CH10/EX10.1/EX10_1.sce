//Book - Power System: Analysis & Design 5th Edition
//Authors - J. Duncan Glover, Mulukutla S. Sarma, and Thomas J. Overbye
//Chapter - 10 ; Example 10.1
//Scilab Version - 6.0.0 ; OS - Windows
clc;
clear;
CTratio=100/5;                                                          //CT ratio
Zs=0.082;                                                               //Secondary resistance of a 100:5 CT in Ohm
IZB=[5 0.5; 8 0.8; 15 1.5];                                             //Secondary output current in Amperes and burden resistance in Ohm
E=(Zs+IZB(1,2))*IZB(1,1);                                               //Secondary Excitation voltage in Volts
printf('\nCase: a');
printf('\nThe Secondary excitation voltage is %0.4f Volts',E);
Ie=0.25                                                                 //Secondary Excitation current for the secondary voltage from figure !0.8 in Amperes
printf('\nThe Secondary excitation current is %0.4f Amperes',Ie);
I=CTratio*(IZB(1,1)+Ie);                                                //Primary current of the CT in Amperes
printf('\nThe Primary current is %d Amperes',I);
CTerr=Ie*100/(IZB(1,1)+Ie)';                                            //Error in CT
printf('\nThe error of the CT is %0.4f percentage',CTerr);
E=(Zs+IZB(2,2))*IZB(2,1);                                               //Secondary Excitation voltage in Volts
printf('\n\nCase: b');
printf('\nThe Secondary excitation voltage is %0.4f Volts',E);
Ie=0.4                                                                 //Secondary Excitation current for the secondary voltage from figure !0.8 in Amperes
printf('\nThe Secondary excitation current is %0.4f Amperes',Ie);
I=CTratio*(IZB(2,1)+Ie);                                               //Primary current of the CT in Amperes
printf('\nThe Primary current is %d Amperes',I);
CTerr=Ie*100/(IZB(2,1)+Ie)';                                           //Error in CT
printf('\nThe error of the CT is %0.4f percentage',CTerr);
E=(Zs+IZB(3,2))*IZB(3,1);                                              //Secondary Excitation voltage in Volts
printf('\n\nCase: c');
printf('\nThe Secondary excitation voltage is %0.4f Volts',E);
Ie=20                                                                 //Secondary Excitation current for the secondary voltage from figure !0.8 in Amperes
printf('\nThe Secondary excitation current is %0.4f Amperes',Ie);
I=CTratio*(IZB(3,1)+Ie);                                              //Primary current of the CT in Amperes
printf('\nThe Primary current is %d Amperes',I);
CTerr=Ie*100/(IZB(3,1)+Ie)';                                          //Error in CT
printf('\nThe error of the CT is %0.4f percentage',CTerr);
