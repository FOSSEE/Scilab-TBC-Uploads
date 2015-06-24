clear    
clc
disp('Exa-3.4(a)');
hc=1240; phi=4.52               //both the values are in eV
w1=hc/phi; 
printf('The cutoff wavelength of the tungsten metal is %.3fnm\n ',w1);
disp('Exa-3.4(b)');
w2=198;     //given value of wavelength    
Kmax=(hc/w2)-phi;printf('The max value of kinetic energy is %.3f eV\n',Kmax);
disp('Exa-3.4(c)');
Vs=Kmax; printf('The numerical value of the max kinetic energy is same as stopping potential in volts.Hence %.2f V',Vs);
      