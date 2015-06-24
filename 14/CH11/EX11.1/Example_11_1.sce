//Chapter 11
//Example 11.1
//Page 280
//linecurrents
clear;clc;

//Given
I_a = 10 * (cos(0) + %i * sin(0));
I_b = 10 * (cos(180 * %pi / 180) + %i * sin(180 * %pi / 180));
I_c = 0;
a = 1 * (cos(120 * %pi / 180) + %i * sin(120 * %pi / 180));
//Phase 'a'
disp('Phase a')
I_a0=(1/3)*(I_a+I_b+I_c);
I_a1=(1/3)*(I_a+a*I_b+a^2*I_c);
I_a2=(1/3)*(I_a+a^2*I_b+a*I_c);
printf(" I_a0 = %.2f /_%.2f A",abs(I_a0),atan(imag(I_a0),real(I_a0)) * 180 / %pi)
printf("\n I_a1 = %.2f /_%.2f A",abs(I_a1),atan(imag(I_a1),real(I_a1)) * 180 / %pi)
printf("\n I_a2 = %.2f /_%.2f A \n\n",abs(I_a2),atan(imag(I_a2),real(I_a2)) * 180 / %pi)

//Phase 'b'
disp('Phase b')
I_b0 = I_a0;
I_b1=a^2*I_a1;
I_b2=a*I_a2;
printf(" I_b0 = %.2f /_%.2f A",abs(I_b0),atan(imag(I_b0),real(I_b0)) * 180 / %pi)
printf("\n I_b1 = %.2f /_%.2f A",abs(I_b1),atan(imag(I_b1),real(I_b1)) * 180 / %pi)
printf("\n I_b2 = %.2f /_%.2f A \n\n",abs(I_b2),atan(imag(I_b2),real(I_b2)) * 180 / %pi)

//Phase 'c'
disp('Phase c')
I_c0=I_a0;
I_c1=a*I_a1;
I_c2=a^2*I_a2;
printf(" I_c0 = %.2f /_%.2f A",abs(I_c0),atan(imag(I_c0),real(I_c0)) * 180 / %pi)
printf("\n I_c1 = %.2f /_%.2f A",abs(I_c1),atan(imag(I_c1),real(I_c1)) * 180 / %pi)
printf("\n I_c2 = %.2f /_%.2f A \n\n",abs(I_c2),atan(imag(I_c2),real(I_c2)) * 180 / %pi)