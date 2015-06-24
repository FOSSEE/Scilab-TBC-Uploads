clear 
clc
disp('Exa-3.6(a)');
w1=0.24;wc=0.00243;theta=60;   //given values w=wavelength(lambeda)
w2=w1+(wc*(1-cosd(theta))); 
printf('The wavelength of x-rays after scattering is %.4f nm\n',w2);
disp('Exa-3.6(b)');
hc=1240;
E2=hc/w2;E1=hc/w1; printf('The energy of scattered x-rays is %.0f eV\n',E2);
disp('Exa-3.6(c)');
K= E1-E2; //The kinetic energy is the difference in the energy before and after the collision;
printf('The kinetic energy of the x-rays is %.3f eV\n',K);
disp('Exa-3.6(d)');
phi2=atand(E2*sind(theta)/(E1-E2*cosd(theta)))
printf('The direction of the scattered eletron is %.1f degrees',phi2);