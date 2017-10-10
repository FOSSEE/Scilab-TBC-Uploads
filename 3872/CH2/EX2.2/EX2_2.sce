//Book - Power System: Analysis & Design 5th Edition
//Authors - J. Duncan Glover, Mulukutla S. Sarma, and Thomas J. Overbye
//Chapter - 2 ; Example 2.2
//Scilab Version - 6.0.0 ; OS - Windows


clc;
clear;
V=100*exp(%i*130*%pi/180);                          //Source Voltage in Volts
I=10*exp(%i*10*%pi/180);                            //Source current in Amperes
S=V*conj(I);                                        //Apparent power in VA
P=real(S);                                          //Real power in Watts
Q=imag(S);                                          //Reactive power in VAR
printf('The values are P=%d Watts and Q=%d VAR. Hence,',P,Q);
if P<0 then
    P=-P
    printf('\nThe source absorbs %d Watts',P);
else 
    printf('\nThe source delivers %d Watts',P);
end
if Q<0 then
    Q=-Q;
    printf('\nThe source absorbs %d VAR',Q);
else
    printf('\nThe source delivers %d VAR',Q);
end
