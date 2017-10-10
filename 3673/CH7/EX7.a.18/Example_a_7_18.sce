//Example_a_7_18 page no:285
clc;
Vimag=10;
Viang=0;
Iscmag=9;
Iscang=90;
Vocmag=9*Vimag;
Vocang=Viang;
Zthmag=Vocmag/Iscmag;
Zthang=Vocang-Iscang;
Imag=Vocmag/8;
Iang=Vocang-(-90);
disp(Imag,"the magnitude of current passing through 2i ohm resistor is (in A)");
disp(Iang,"the angle of current passing through 2i ohm resistor is (in degree)");
