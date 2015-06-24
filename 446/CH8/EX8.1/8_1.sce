clear  
clc
disp('Exa-8.1');
hc=1240*10^-9;Rinfi=1.097*10^7;Z=11;  //for sodium atom;and other constants in MeV
delE=3*hc*Rinfi*(Z-1)^2/4              //change in energy
printf('The energy of the Ka x-ray of the sodium atom is %.3f KeV.',delE/10^3);
