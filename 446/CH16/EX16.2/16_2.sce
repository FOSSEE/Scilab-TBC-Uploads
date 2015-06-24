clear
clc
disp('Ex-16.2');
mc2=940*10^6; k=8.6*10^-5; //various constants and given values in suitable units
T= mc2/k;       //temperature of the photons
printf('The temperature of the photons must be %.1e K\n',T);
t=((1.5*10^10)/T)^2;       //age of universe when the photons have the above temperature
printf('The age of the universe for the temperature of the photon to be as obtained above is %.0e seconds',t);