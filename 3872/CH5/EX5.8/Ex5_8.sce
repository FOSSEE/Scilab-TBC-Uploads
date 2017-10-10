// Book - Power System: Analysis & Design 5th Edition
// Authors - J. Duncan Glover, Mulukutla S. Sharma, Thomas J. Overbye
// Chapter - 5 : Example 5.8
// Scilab Version 6.0.0 : OS - Windows

clc;
clear;

N = 6;                                        // Number of transmission lines
Vs = 765;                                     // Transmission voltage in kV
l = 167;                                      // Intermediate substations distance in km
Pl=9000;                                      //Load power , value taken from Example 5.7 
lambda = 5000;                                // Wavelength in km
Beta = (2*%pi)/lambda;                        // Taken from Eq 5.4.15
L = 500;                                      // Eqivalent pi circuit lenght in km
Zc = 266;                                     // Characteristic impedance of the line in Ohm
X = Zc*sin(Beta*L);                           // Series reactance in Ohm ; taken from Eq 5.4.10
Xeq = ((1/5)*((2/3)*X))+((1/4)*(X/3));        // Equivalent reactance of ﬁve lines with one line section out of service in Ohm
Vr = 0.95*765;                                // Receiving end voltage in kV
delta = 35;                                   // Phase angle in degree 
P = ((Vs*Vr)/Xeq)*sind(delta);                // Real power delivered in MW ; taken from Eq 5.4.26

printf('Series reactance is  (X) = %0.2f  Ohm', X);
printf('\nEquivalent reactance of ﬁve lines with one line section out of service is  (Xeq) = %0.2f  Ohm', Xeq);
printf('\nReal power delivered is  (P) = %0.0f  MW', P);

if 0.97*P>Pl           //Assuming 3% as losses
    printf('\n\nThe five instead of six 765-kV lines can transmit the required power in Example 5.7')
end
