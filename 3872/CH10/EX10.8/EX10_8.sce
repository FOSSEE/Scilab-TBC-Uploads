//Book - Power System: Analysis & Design 5th Edition
//Authors - J. Duncan Glover, Mulukutla S. Sarma, and Thomas J. Overbye
//Chapter - 10 ; Example 10.8
//Scilab Version - 6.0.0 ; OS - Windows
clc;
clear;
Vln=345;                                                        //Source voltage in kVolts
CTratio=1500/5;                                                 //CT ratio
VTratio=3000/1;                                                 //VT ratio
Imax=1500;                                                      //Maximum current during emergency loading in Amperes
pf=0.95;                                                        //Power factor
positivesequence=[8+%i*50;8+%i*50;5.3+%i*33;4.3+%i*27];         //Positive sequence impedance in Ohms
Zsec=CTratio/VTratio;                                           //Secondary impedance with respect to primary impedance in Ohms
Zr1=0.8*positivesequence(1)*Zsec;                               //B12 zone 1 relay for 80% reach in Ohms
Zr2=1.2*positivesequence(2)*Zsec;                               //B12 zone 2 relay for 120% reach in Ohms
Zr3=(positivesequence(3)*1.2+positivesequence(2))*Zsec          //B12 zone 3 relay for 100% reach of line 1–2 and 120% reach of line 2–4 in Ohms
Z=(Vln*10^(3)*Zsec/sqrt(3))/(Imax*exp(-%i*acos(pf)));
printf('\nThe magnitude of Zr1 is %0.2f Ohm and its angle is %0.2f degrees',abs(Zr1),atand(imag(Zr1),real(Zr1)));
printf('\nThe magnitude of Zr2 is %0.2f Ohm and its angle is %0.2f degrees',abs(Zr2),atand(imag(Zr2),real(Zr2)));
printf('\nThe magnitude of Zr3 is %0.2f Ohm and its angle is %0.2f degrees\n',abs(Zr3),atand(imag(Zr3),real(Zr3)));
if abs(Z)>abs(Zr3) then
    printf('\nEmergency impedance exceeds the zone 3 setting\nIt lies outside the trip regions of thethree-zone, directional impedance relay');
else
    printf('\nEmergency impedance does not exceed the zone 3 setting\nIt lies inside the trip regions of thethree-zone, directional impedance relay');
end
    
