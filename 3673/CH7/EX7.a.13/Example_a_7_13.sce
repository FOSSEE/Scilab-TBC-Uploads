//Example_a_7_13 page no:280
clc;
V_abmag=20;
V_abang=0;
V_abreal=20;
V_abimag=0;
V__abmag=5*5;
V__abang=0+53.13;
V__abreal=15;
V__abimag=19.99;
V___abmag=0;
V___abang=0;
//calculating the voltage across AB
Vab=V_abreal+V__abreal+(V_abimag+V__abimag)*%i;
Vabmag=sqrt(real(Vab)^2+imag(Vab)^2)
Vabang=atand(imag(Vab)/real(Vab));
Zth=3+4*%i;
disp(Vabmag,"the magnitude of voltage across AB is (in V)");
disp(Vabang,"the angle of voltage across AB is (in degree)");
disp(Zth,"the impedance across terminals AB is (in ohm)");
