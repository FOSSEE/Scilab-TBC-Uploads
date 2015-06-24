clear; clc; close;

//part a
Ie = 3*10^(-3);
Vcb = 10;
Ic = Ie;
disp(Ic,'Ic (A):');

//part b
Vcb = 2;
Ie = 3*10^(-3);
Ic = Ie;
disp(Ic,'No effect of changing Vcb & Ic remains same, Ic(A) is : ');
//part c
Ic = 4*10^(-3);
Vcb = 20;
Ie  = Ic;
Vbe = 0.74;
disp(Vbe,'Vbe(volts) is :');
//part d
Ic = 4*10^(-3);
Ie  = Ic;
Vbe = 0.7;
disp(Vbe,'Vbe(volts) in this case is : ');
