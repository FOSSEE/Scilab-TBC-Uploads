//Chapter 18
//Example 18_7
//Page 432

clear;clc;

i=90;

disp("(i) BEFORE REMOVAL OF FUSES: ");

a=1*(cosd(120)+%i*sind(120));

Ir=90*(cosd(0)+%i*sind(0));
Iy=90*(cosd(240)+%i*sind(240));
Ib=90*(cosd(120)+%i*sind(120));

Ir0=1/3*(Ir+Iy+Ib);
Ir2=1/3*(Ir+a^2*Iy+a*Ib);

Iy2=a*Ir2;
Ib2=a^2*Ir2;

Ir1=Ir;
Iy1=Iy;
Ib1=Ib;

printf("Ir = %.2f /_%.2f A \n", abs(Ir), atand(imag(Ir)/real(Ir)));
printf("Iy = %.2f /_%.2f A \n", abs(Iy), atand(imag(Iy)/real(Iy))+180);
printf("Ib = %.2f /_%.2f A \n\n", abs(Ib), atand(imag(Ib)/real(Ib))+180);

printf("Zero sequence components of three line currents are: \n");
printf("Ir0 = Iy0 = Ib0 = %d A \n\n", real(Ir0));

printf("Ir2 = %d A \n", abs(Ir2));
printf("Iy2 = %d A \n", abs(Iy2));
printf("Ib2 = %d A \n\n", abs(Ib2));

printf("Ir1 = %.2f /_%.2f A \n", abs(Ir), atand(imag(Ir)/real(Ir)));
printf("Iy1 = %.2f /_%.2f A \n", abs(Iy), atand(imag(Iy)/real(Iy))+180);
printf("Ib1 = %.2f /_%.2f A \n\n\n", abs(Ib), atand(imag(Ib)/real(Ib))+180);

disp("AFTER REMOVAL OF FUSES: ");

Ird=90*(cosd(0)+%i*sind(0));
Iyd=0;
Ibd=0;

printf("Ir = %.2f /_%.2f A \n", abs(Ird), atand(imag(Ird)/real(Ird)));
printf("Iy = %d A \n", Iyd);
printf("Ib = %d A \n\n", Ibd);

Ir0d=1/3*(Ird+Iyd+Ibd);
Ir1d=1/3*(Ird+a*Iyd+a^2*Ibd);
Ir2d=1/3*(Ird+a^2*Iyd+a*Ibd);

printf("Zero sequence components of three line currents are: \n");
printf("Ir0 = Iy0 = Ib0 = %d /_0 A \n\n", real(Ir0d));

Iy0d=Ir0d;
Ib0d=Ir0d;

Iy1d=a^2*Ir1d;
Iy2d=a*Ir2d;

Ib1d=a*Ir1d;
Ib2d=a^2*Ir2d;

printf("Ir1 = %.2f /_%.2f A \n", abs(Ir1d), atand(imag(Ir1d)/real(Ir1d)));
printf("Ir2 = %.2f /_%.2f A \n\n", abs(Ir2d), atand(imag(Ir2d)/real(Ir2d))+180);

printf("Iy1 = %.2f /_%.2f A \n", abs(Iy1d), atand(imag(Iy1d)/real(Iy1d))+180);
printf("Iy2 = %.2f /_%.2f A \n\n", abs(Iy2d), atand(imag(Iy2d)/real(Iy2d))+180);

printf("Ib1 = %.2f /_%.2f A \n", abs(Ib1d), atand(imag(Ib1d)/real(Ib1d))+180);
printf("Ib2 = %.2f /_%.2f A \n\n", abs(Ib2d), atand(imag(Ib2d)/real(Ib2d))+180);

Iyd=Iy0d+Iy1d+Iy2d;
printf("Curretn in yellow line = %d A \n\n", real(Iyd));
