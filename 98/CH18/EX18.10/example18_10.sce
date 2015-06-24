//Chapter 18
//Example 18_10
//Page 435

clear;clc;

a=1*(cosd(120)+%i*sind(120));

rr=5;
ry=10;
rb=20;

Er=-100*(cosd(0)+%i*sind(0));
Ey=100*(cosd(60)+%i*sind(60));
Eb=100*(cosd(-60)+%i*sind(-60));

Ir=Er/rr;
Iy=Ey/ry;
Ib=Eb/rb;

printf("Er = %.2f /_%.2f V \n", Er, atand(imag(Er)/real(Er)));
printf("Ey = %.2f /_%.2f V \n", abs(Ey), atand(imag(Ey)/real(Ey)));
printf("Eb = %.2f /_%.2f V \n\n", abs(Eb), atand(imag(Eb)/real(Eb)));
  
printf("Ir = %.2f /_%.2f A \n", Ir, atand(imag(Ir)/real(Ir)));
printf("Iy = %.2f /_%.2f A \n", abs(Iy), atand(imag(Iy)/real(Iy)));
printf("Ib = %.2f /_%.2f A \n\n", abs(Ib), atand(imag(Ib)/real(Ib)));

disp("SEQUENCE CURRENTS IN RESISTORS: ");

Ir0=1/3*(Ir+Iy+Ib);
Ir1=1/3*(Ir+a*Iy+a^2*Ib);
Ir2=1/3*(Ir+a^2*Iy+a*Ib);

Iy0=Ir0;
Iy1=a^2*Ir1;
Iy2=a*Ir2;

Ib0=Ir0;
Ib1=a*Ir1;
Ib2=a^2*Ir2;

printf("Ir0 = %.2f /_%.2f A \n", abs(Ir0), atand(imag(Ir0)/real(Ir0))+180);
printf("Ir1 = %.2f /_%.2f A \n", abs(Ir1), atand(imag(Ir1)/real(Ir1))+180);
printf("Ir2 = %.2f /_%.2f A \n\n", abs(Ir2), atand(imag(Ir2)/real(Ir2))-180);

printf("Iy0 = %.2f /_%.2f A \n", abs(Iy0), atand(imag(Iy0)/real(Iy0))+180);
printf("Iy1 = %.2f /_%.2f A \n", abs(Iy1), atand(imag(Iy1)/real(Iy1)));
printf("Iy2 = %.2f /_%.2f A \n\n", abs(Iy2), atand(imag(Iy2)/real(Iy2)));

printf("Ib0 = %.2f /_%.2f A \n", abs(Ib0), atand(imag(Ib0)/real(Ib0))+180);
printf("Ib1 = %.2f /_%.2f A \n", abs(Ib1), atand(imag(Ib1)/real(Ib1)));
printf("Ib2 = %.2f /_%.2f A \n\n", abs(Ib2), atand(imag(Ib2)/real(Ib2)));

disp("SEQUENCE CURRENTS IN SUPPLY LINES: ");
ir=Ib-Iy;
iy=Ir-Ib;
ib=Iy-Ir;

ir0=1/3*(ir+iy+ib);
ir1=1/3*(ir+a*iy+a^2*ib);
ir2=1/3*(ir+a^2*iy+a*ib);

  
printf("Line current in R-line = Ir = %.2f /_%.2f A \n", abs(ir), atand(imag(ir)/real(ir))-180);
printf("Line current in Y-line = Iy = %.2f /_%.2f A \n", abs(iy), atand(imag(iy)/real(iy))+180);
printf("Line current in B-line = Ib = %.2f /_%.2f A \n\n", abs(ib), atand(imag(ib)/real(ib)));

printf("Ir0 = %d A \n", abs(ir0));
printf("Ir1 = %.2f /_%.2f A \n", abs(ir1), atand(imag(ir1)/real(ir1))-180);
printf("Ir2 = %.2f /_%.2f A \n\n", abs(ir2), atand(imag(ir2)/real(ir2))+180);

