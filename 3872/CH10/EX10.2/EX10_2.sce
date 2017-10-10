//Book - Power System: Analysis & Design 5th Edition
//Authors - J. Duncan Glover, Mulukutla S. Sarma, and Thomas J. Overbye
//Chapter - 10 ; Example 10.2
//Scilab Version - 6.0.0 ; OS - Windows
clc;
clear;
Irelay=200                  //Current through the relay in Amperes
CTratio=100/5;              //CT ratio
Zs=0.082;                   //Secondary resistance of a 100:5 CT in Ohm
IZB=[8 0.8; 8 3];           //Secondary output current in Amperes and burden resistance in Ohm
E=(Zs+IZB(1,2))*IZB(1,1);   //Secondary Excitation voltage in Volts
Ie=0.40                     //Secondary Excitation current for the secondary voltage from figure !0.8 in Amperes
I=CTratio*(IZB(1,1)+Ie);    //Primary current of the CT in Amperes
printf('\nCase: a');
if (Irelay>I) then
    printf('\nWith the burden resistance of %0.2f Ohm, the minimum primary current required is %d Amperes.\nTherefore the relay will operate because of the 200 Amperes fault current',IZB(1,2),I)
else
    printf('\nWith the burden resistance of %0.2f Ohm, the minimum primary current required is %d Amperes.\nTherefore the relay will not operate because of the 200 Amperes fault current',IZB(1,2),I);
end
E=(Zs+IZB(2,2))*IZB(2,1);   //Secondary Excitation voltage in Volts
Ie=30                       //Secondary Excitation current for the secondary voltage from figure !0.8 in Amperes
I=CTratio*(IZB(2,1)+Ie);    //Primary current of the CT in Amperes
printf('\n\nCase: b');
if (Irelay>I) then
    printf('\nWith the burden resistance of %0.2f Ohm, the minimum primary current required is %d Amperes.\nTherefore the relay will operate because of the 200 Amperes fault current',IZB(2,2),I)
else
    printf('\nWith the burden resistance of %0.2f Ohm, the minimum primary current required is %d Amperes.\nTherefore the relay will not operate because of the 200 Amperes fault current',IZB(2,2),I);
end
