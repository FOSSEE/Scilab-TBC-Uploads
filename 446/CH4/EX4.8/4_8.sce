clear 
clc
disp('Ex-4.8')
h=6.58*10^-16; // plack's constant
delt1=26*10^-9;E=140*10^6 //given values of lifetime and rest energy of charged pi meson
delE=h/delt1; k=delE/E;  // k is the measure of uncertainity
printf('Uncertainity in energy of charged pi meson is %1.2e\n',k);
delt2=8.3*10^-17;E=135*10^6;  //given values of lifetime and rest energy of uncharged pi meson
delE=h/delt2; k=delE/E;
printf('Uncertainity in energy of uncharged pi meson is %1.2e\n',k);
delt3=4.4*10^-24;E=765*10^6;       //given values of lifetime and rest energy of rho meson
delE=h/delt3; k=delE/E;
printf('Uncertainity in energy of rho meson is %.1f\n',k);