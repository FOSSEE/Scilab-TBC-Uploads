//Chapter 18
//Example 18_12
//Page 438

clear;clc;

a=1*(cosd(120)+%i*sind(120));

z1=5-%i*10;
z2=6+%i*5;
z3=3+%i*15;

Vry=3300*(cosd(0)+%i*sind(0));
Vyb=a^2*Vry;

Vr_minus_Vy=3300;
Vy_minus_Vb=3300*(cosd(120)-%i*sind(120));

printf("Since Ir+Iy+Ib=0, Ir0=Iy0=Ib0=0 A \n");

v=[Vr_minus_Vy; Vy_minus_Vb];

za=z1-a^2*z2;
zb=z1-a*z2;
zc=a^2*z2-a*z3;
zd=a*z2-a^2*z3;
z=[za zb; zc zd];

I=z\v;

printf("Ir1 = %.2f+j(%.2f) \n", real(I(1)), imag(I(1)));
printf("Ir2 = %.2f+j(%.2f) \n\n", real(I(2)), imag(I(2)));

ir=I(1)+I(2);
printf("Ir = %.2f /_%.2f \n\n", abs(ir), atand(imag(ir)/real(ir)));



