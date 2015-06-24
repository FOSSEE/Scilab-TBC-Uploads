//Chapter 18
//Example 18_4
//Page 430

clear;clc;

a=1*(cosd(120)+%i*sind(120));

Er0=100;
Er1=200-%i*100;
Er2=-100;

Er=Er0+Er1+Er2;
Ey=Er0+a^2*Er1+a*Er2;
Eb=Er0+a*Er1+a^2*Er2;

printf("Er = %.2f /_%.2f volts \n\n", abs(Er), atand(imag(Er)/real(Er)));
printf("Ey = %.2f /_%.2f volts \n\n", abs(Ey), atand(imag(Ey)/real(Ey))-180);
printf("Eb = %.2f /_%.2f volts \n\n", abs(Eb), atand(imag(Eb)/real(Eb)));
