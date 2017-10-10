//To find line current and pf and powers of a balanced delta load

clc;
clear;

Z=8+6*%i; // Load
V=230; // Voltage supply

iR=V/Z;
theta= atand(imag(iR)/real(iR));

Il= iR*sqrt(3); // Line current

Pa=sqrt(3)*V*abs(Il)*cosd(theta); // Active Power
Pr=sqrt(3)*V*abs(Il)*sind(theta); // Reactive Power

Pt=sqrt(3)*V*abs(Il); // Total Volt amperes

printf('The line current = %g A \n',abs(Il))
printf('The power factor = %g lagging \n',cosd(theta))
printf('The Active Power = %g kW \n',abs(Pa)/1000)
printf('The Reactive Power = %g kV Ar \n',abs(Pr)/1000)
printf('The total volt amperes = %g kVA \n',abs(Pt)/1000)
