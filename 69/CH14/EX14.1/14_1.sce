clear; clc; close;

A = -100;
Zi = 10*10^(3);
Zo = 20*10^(3);


//part a 
Beta = -0.1;
Af = A/(1+Beta*A);
Zif = Zi*(1+Beta*A);
Zof = Zo/(1+Beta*A);

disp(Af,'Voltage gain for part a= ');
disp(Zif,'Input impedance for part a= ');
disp(Zof,'Output Impedance for part a= ');

//part b
Beta = -0.5;
Af = A/(1+Beta*A);
Zif = Zi*(1+Beta*A);
Zof = Zo/(1+Beta*A);

disp(Af,'Voltage gain for part b = ');
disp(Zif,'Input impedance for part b = ');
disp(Zof,'Output Impedance for part b = ');
