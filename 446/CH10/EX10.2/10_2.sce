clear
clc
disp('Exa-10.2');       //The solution is purely theoretical and involves a lot of approximations.
printf('The value of shift in frequency was found out to be delf=7.14*fo*10^-7*sqrt(T) for a star composing of hydrogen atoms at a temperature T.\n');
T=6000;                       //temperature for sun
delf=7.14*10^-7*sqrt(T);.....//change in frequency
printf('The value of frequency shift for sun(at 6000 deg. temperature) comprsing of hydrogen atoms is %.1e times the frequency of the light.',delf);