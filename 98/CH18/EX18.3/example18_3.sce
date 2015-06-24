//Chapter 18
//Example 18_3
//Page 429

clear;clc;

a=1*(cosd(120)+%i*sind(120));
    
Ir=12+%i*6;
Iy=12+%i*-12;
Ib=-15+%i*10;
  
  Ir0=1/3*(Ir+Iy+Ib);
  Ir1=1/3*(Ir+a*Iy+a^2*Ib);
  Ir2=1/3*(Ir+a^2*Iy+a*Ib);
  
disp("RED PHASE:");
printf("Ir0 = %.2f+j(%.2f) A \n", real(Ir0), imag(Ir0));
printf("Ir1 = %.2f+j(%.2f) A \n", real(Ir1), imag(Ir1));
printf("Ir2 = %.2f+j(%.2f) A \n\n", real(Ir2), imag(Ir2));

Iy0=Ir0;
Iy1=a^2*Ir1;
Iy2=a*Ir2;
disp("YELLOW PHASE:");
printf("Iy0 = %.2f+j(%.2f) A \n", real(Iy0), imag(Iy0));
printf("Iy1 = %.2f+j(%.2f) A \n", real(Iy1), imag(Iy1));
printf("Iy2 = %.2f+j(%.2f) A \n\n", real(Iy2), imag(Iy2));

Ib0=Ir0;
Ib1=a*Ir1;
Ib2=a^2*Ir2;
disp("BLUE PHASE:");  
printf("Ib0 = %.2f+j(%.2f) A \n", real(Ib0), imag(Ib0));
printf("Ib1 = %.2f+j(%.2f) A \n", real(Ib1), imag(Ib1));
printf("Ib2 = %.2f+j(%.2f) A \n\n", real(Ib2), imag(Ib2));

