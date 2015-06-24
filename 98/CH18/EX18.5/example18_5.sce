//Chapter 18
//Example 18_5
//Page 431

clear;clc;

a=1*(cosd(120)+%i*sind(120));

Er0=0.5-%i*0.866;
Er1=2*(cosd(0)+%i*sind(0));
Er=3*(cosd(0)+%i*sind(0));

Er2=Er-Er0-Er1;
Ey=Er0+a^2*Er1+a*Er2;
Eb=Er0+a*Er1+a^2*Er2;

printf("Er2 = %.2f /_%.2f volts \n\n", abs(Er2), atand(imag(Er2)/real(Er2)));
printf("Ey = %.2f /_%.2f volts \n\n", abs(Ey), atand(imag(Ey)/real(Ey))-180);
printf("Eb = %.2f volts \n\n", abs(Eb));
