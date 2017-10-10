//Example_a_5_2 page no:202
clc;
V=10;
Z=100+(((125.66*%i)*(314.15*%i))/((125.66*%i)+(314.15*%i)));
Zmag=sqrt(real(Z)^2+imag(Z)^2);
Zang=atand(imag(Z)/real(Z));
disp(Zmag,"the magnitude of impedence is (in ohm)");
disp(Zang,"the angle of impedence is (in degree)");
Imag=V/Zmag;
Iang=0-Zang;
disp(Imag,"the magnitude of current is (in A)");
disp(Iang,"the angle of current is (in degree)");
//inductance value is doubled
Z=100+(%i*179.7);
Zmag=sqrt(real(Z)^2+imag(Z)^2);
Zang=atand(imag(Z)/real(Z));
disp(Zmag,"the magnitude of impedence is (in ohm)");
disp(Zang,"the angle of impedence is (in degree)");
