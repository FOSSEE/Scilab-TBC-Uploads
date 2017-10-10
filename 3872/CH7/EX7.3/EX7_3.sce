//Book - Power System: Analysis & Design 5th Edition
//Authors - J. Duncan Glover, Mulukutla S. Sarma, and Thomas J. Overbye
//Chapter - 7 ; Example 7.3
//Scilab Version - 6.0.0 ; OS - Windows
clc;
clear;
Srated = 100;                                                              //rated power in MVA
V1 = 13.8;                                                                 //generator supply voltage in kV
Xg = 0.15;                                                                 //generator input reactance in ohm
Vline = 138;                                                               //transmission line voltage in kV
Xline = 20;                                                                //transmission line reactance in ohm
Vprtr1 = 13.8;                                                             //primary side voltage of transformer 1 in kV
Vsectr1 = 138;                                                             //secondary side voltage of transformer 1 in kV
Xt1 = 0.10;                                                                //reactance of transformer 1 in ohm
Vprtr2 = 138;                                                              //primary side voltage of transformer 2 in kV
Vsectr2 = 13.8;                                                            //secondary side voltage of transformer 2 in kV
Xt2 = 0.10;                                                                //reactance of transformer 2 in ohm
V2 = 13.8;                                                                 //motor supply voltage in kV
Xm = 0.20;                                                                 //motor reactance in ohm
pf =0.95;                                                                  //lagging power factor
Rth1 = 0.15;                                                               //thevenins resistance in ohm
Rth2 = 0.505;                                                              //thevenins resistance in ohm
Vf=1.05;                                                                   //prefaault voltage at the generator terminals
Zbl = (Vsectr1^2);                                                         //base impedance of the transmission line in ohm
Xlinepu = Xline/Zbl;                                                       //transmission line reactance in per unit
Zth = %i*((Rth1*Rth2)/(Rth1+Rth2));                                        //Thevenin's impedance per unit
If = Vf/Zth;                                                               //sub transient fault current in per unit
Ig1 = ((Rth2/(Rth2+Rth1))*If);                                             //sub tranisent generator current in per unit
Im1 = ((Rth1/(Rth2+Rth1))*If);                                             //sub transient motor current in per unit
Ibase = (Srated/((sqrt(3))*(V1)));                                         // generator base current in kA
Il = ((Srated/((sqrt(3))*V1*Vf))*(cos(-acos(pf))+%i*sin(-acos(pf))));      //prefault generator current  in kA
Il = Il/Ibase;                                                             //prefault generator current in per unit
Ig = Ig1 + Il;                                                             //sub transient generator current including pre fault current in per unit
Im = Im1 - Il;                                                             //sub transient motor current including pre fault current in per unit

printf('\n Sub transient fault current If = %0.3fi per unit',imag(If));
printf('\n Sub transient generator current neglecting fault current Ig1 = %0.3fi per unit ',imag(Ig1));
printf('\n Sub transient motor current neglecting fault current Im1 = %0.3fi per unit ',imag(Im1));
printf('\n Sub transient generator current including fault current in per unit is %0.4f and its anglle is %0.4f', abs(Ig), atand(imag(Ig), real(Ig)));
printf('\n Sub transient motor current including fault current in per unit  %0.4f and its anglle is %0.4f',abs(Im), atand(imag(Im), real(Im))+360); 
//360 is added to get positive angle. There will not be any change in angle because 360 degree and 0 degree are same.
