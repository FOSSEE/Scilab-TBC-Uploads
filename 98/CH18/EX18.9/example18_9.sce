//Chapter 18
//Example 18_9
//Page 434

clear;clc;

a=1*(cosd(120)+%i*sind(120));

Ir=10*(cosd(0)+%i*sind(0));
Iy=10*(cosd(180)+%i*sind(180));
Ib=0;

Ir0=1/3*(Ir+Iy+Ib);
Ir1=1/3*(Ir+a*Iy+a^2*Ib);
Ir2=1/3*(Ir+a^2*Iy+a*Ib);

Iy0=Ir0;
Iy1=a^2*Ir1;
Iy2=a*Ir2;

Ib0=Ir0;
Ib1=a*Ir1;
Ib2=a^2*Ir2;

printf("Ir = %.2f /_%.2f A \n", abs(Ir), atand(imag(Ir)/real(Ir)));
printf("Iy = %.2f /_%.2f A \n", abs(Iy), atand(imag(Iy)/real(Iy))+180);
printf("Ib = %.d A \n\n", Ib);

disp("RED PHASE: ");
printf("Ir0 = %d A \n", real(Ir0));
printf("Ir1 = %.2f /_%.2f A \n", abs(Ir1), atand(imag(Ir1)/real(Ir1)));
printf("Ir2 = %.2f /_%.2f A \n\n", abs(Ir2), atand(imag(Ir2)/real(Ir2)));

disp("YELLOW PHASE: ");
printf("Iy0 = %d A \n", real(Iy0));
printf("Iy1 = %.2f /_%.2f A \n", abs(Iy1), atand(imag(Iy1)/real(Iy1))-180);
printf("Iy2 = %.2f /_%.2f A \n\n", abs(Iy2), atand(imag(Iy2)/real(Iy2))+180);

disp("BLUE PHASE: ");
printf("Ib0 = %d  A \n", real(Ib0));
printf("Ib1 = %.2f /_%.2f A \n", abs(Ib1), atand(imag(Ib1)/real(Ib1)));
printf("Ib2 = %.2f /_%.2f A \n\n", abs(Ib2), atand(imag(Ib2)/real(Ib2))-180);



