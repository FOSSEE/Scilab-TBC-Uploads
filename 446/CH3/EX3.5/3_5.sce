clear 
clc
disp('Exa-3.5(a)');
T1=293; Kw=2.898*10^-3;
w1=Kw/T1;
printf('The wavelength at which emits maximum radiation is %.2f um.\n',w1*10^6);
disp('Exa-3.5(b)');
w2=650*10^-9; 
T2=Kw/w2;
printf('The temperature of the object must be raised to %.0f K.\n',T2);
disp('Exa-3.5(c)');
x=(T2/T1)^4; printf('Thus the thermal radiation at higher temperature is %.2e times the room (lower) tempertaure.\n',x);