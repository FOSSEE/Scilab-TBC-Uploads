//Chapter 18
//Example 18_13
//Page 440

clear;clc;

a=1*(cosd(120)+%i*sind(120));

r=1;
vry=200;
vyb=346;
vbr=400;

//referring to the phasor diagram
//vbr is twice vry, ie, factor =2
//vyb=1.75 times vry
alpha=acosd((1+1.75*cosd(90))/2);

Vry=vry*(cosd(180)+%i*sind(180));
Vyb=vyb*(cosd(90)+%i*sind(90));
Vbr=vbr*(cosd(-alpha)+%i*sind(-alpha));

printf("Vry = %.2f+j(%.2f) V \n", real(Vry), imag(Vry));
printf("Vyb = %.2f+j(%.2f) V \n", real(Vyb), imag(Vyb));
printf("Vbr = %.2f+j(%.2f) V \n\n", real(Vbr), imag(Vbr));

Ir=Vry/sqrt(3);
Iy=Vyb/sqrt(3);
Ib=Vbr/sqrt(3);

disp("Line current : ");
printf("Ir = %.2f /_%.2f A \n", abs(Ir), atand(imag(Ir)/real(Ir))+180);
printf("Iy = %.2f /_90 A \n", abs(Iy));
printf("Ib = %.2f /_%.2f A \n\n", abs(Ib), atand(imag(Ib)/real(Ib)));

Ir0=1/3*(Ir+Iy+Ib);
Ir1=1/3*(Ir+a*Iy+a^2*Ib);
Ir2=1/3*(Ir+a^2*Iy+a*Ib);

printf("Ir0 = %d A \n", abs(Ir0));
printf("Ir1 = %.2f /_%.2f A \n", abs(Ir1), atand(imag(Ir1)/real(Ir1))-180);
printf("Ir2 = %.2f /_%.2f A \n", abs(Ir2), atand(imag(Ir2)/real(Ir2)));
