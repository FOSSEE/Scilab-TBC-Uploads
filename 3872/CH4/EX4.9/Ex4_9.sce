// Book - Power System: Analysis & Design 5th Edition
// Authors - J. Duncan Glover, Mulukutla S. Sharma, Thomas J. Overbye
// Chapter - 4 : Example 4.9
// Scilab Version 6.0.0 : OS - Windows


clc;
clear;

Vxy = 20;                                                  // Line voltage in kV
e = 8.854*10^-12;
r = (0.023*0.3048);                                        // Radius of the copper conductor in metre

Cxy = 5.178*10^-12;                                        // Line to Line capacitance in F/m
qx = ((Cxy)*(Vxy)*(10^3));                                 // Charge in Columb/metre
qy = -qx;                                                  // Charge in Columb/metre
Er = (qx/(2*%pi*e*r))*(1/1000)*(1/100);                    // conductor surface electric ﬁeld strength in kVrms/cm
Xx = -0.762;                                               // Coordinate for conuctor x with the reference point R
Yx = 0.762;                                                // Coordinate for conuctor Y with the reference point R
w = 5.49;                                                  // Distance of the conductor from the reference point along Y axis
z = (2*%pi*e);
g = ((2*w)/(w^2));
n =  (2*w)/((5.49)^2+(Yx+Yx)^2);
Ek = (qx/z)*(g-n)*10^-3;                                   // Ground-level electric ﬁeld strength in kV/m

printf('conductor surface electric ﬁeld strength is  (Er) = %0.2f  kVrms/cm', Er);
printf('\nGround-level electric ﬁeld strength is  (Ek) = %0.4f  kV/m', Ek);
