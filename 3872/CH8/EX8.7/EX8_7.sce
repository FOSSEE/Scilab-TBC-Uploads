//Book - Power System: Analysis & Design 5th Edition
//Authors - J. Duncan Glover, Mulukutla S. Sarma, and Thomas J. Overbye
//Chapter - 8 ; Example 8.7
//Scilab Version - 6.0.0 ; OS - Windows
clc;
clear;
Q = 75;                                                                                                  //rated power in kVA
Vprtr = 480;                                                                                            //primary side voltage of transformer in volts
Vsectr = 208;                                                                                           //secondary side voltage of transformer in volts
Xeq = 0.10;                                                                                             //leakage reactance in per unit
Sbase = Q/3;                                                                                            //base quantity of rated power in single phase in kVA
VbaseHLN = Vprtr/(sqrt(3));                                                                             //base quantity of primary side voltage of transformer in volts
VbaseXLN = Vsectr/(sqrt(3));                                                                            //base quantity of secondary side voltage of transformer in volts
ZbaseX = 0.5770;                                                                                        //base quantity of impedance in ohm
Vp = [277; 260*(cos(-120*%pi/180)+%i*sin(-120*%pi/180)); 295*(cos(115*%pi/180)+%i*sin(115*%pi/180))];   //given column vector of phase voltage in volts
function [Vp1]=phaseshift(x1,x2)
    [r theta]=polar(x1);
    Vp1=r*(cos(theta+x2*%pi/180)+%i*sin(theta+x2*%pi/180));
endfunction

V0 = (Vp(1,1)+Vp(2,1)+Vp(3,1))/3;                                                                     //zero sequence voltage in V
V1 = (Vp(1,1)+phaseshift(Vp(2,1),120)+phaseshift(Vp(3,1),240))/3;                                     //positive sequence voltage in V
V2 = (Vp(1,1)+phaseshift(Vp(2,1),240)+phaseshift(Vp(3,1),120))/3;                                     //negative sequene voltage in v
V0 = V0/VbaseHLN;                                                                                     //zero sequence voltage in per unit
V1 = V1/VbaseHLN;                                                                                     //positive sequence voltage in per unit
V2 = V2/VbaseHLN;                                                                                     //negative sequene voltage in per unit
Zline0 = 0.087+%i*(0.99);                                                                             //line impedance in ohm
Zload1 = 22.98+%i*(19.281);                                                                           //load impedance in ohm
Zline0 = Zline0/ZbaseX;                                                                               //line impedance in per unit
Zload1 = Zload1/(3*ZbaseX);                                                                           //line impedance in per unit
I0 = 0;                                                                                               //zero sequence component of source current in per unit
I1 = V1/((%i*Xeq)+Zline0+Zload1);                                                                     //positive sequence component of source current in per unit
I2 = V2/((%i*Xeq)+Zline0+Zload1);                                                                     //negative sequence component of source current in per unit
Ia = I0+I1+I2;                                                                                        //phase 'a' source current in per unit
IbaseH=(Q*10^3)/(Vprtr*sqrt(3));                                                                      //base current in A
Ia =  Ia*IbaseH;                                                                                      //phase 'a' source current in A
printf('The magnitude of phase a source  current Ia is %.4f Ampere and its angle is %.4f degree',abs(Ia),atand(imag(Ia),real(Ia)));



