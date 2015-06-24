clear     
clc
disp('Exa-1.3');
h=6.621*10^-34 ; c=2.9979*10^8;                  // h is in J/s and c is  in m/s
hc=h*c*((10^9)/(1.6022*10^-19));               //1e=1.602*10^-19 J and 1 m=10^9 nm
printf('The value of hc is %f eV.nm\n',hc); 
printf('Rounding off to 4 digits, we obtain %4.f eV.nm.',hc);
disp('Hence zero at the end is significant.');
