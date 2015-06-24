clear; clc; close;

Vcc = 20;
Vbe = 0.7;
Beta = 100;
Rb = 250*10^(3);
Re = 2*10^(3);
Vrb = 19.85;
Ic = 0;

Irb = Vcc/(Rb+Re);
Ib = (Vcc-Vbe)/(Rb+(Beta+1)*Re);

disp(Irb,'The base current(amperes) obtained is : ');
disp(Ib,'Ideally Ib(Amperes) should be :');
disp('Hence the transistor is in a damaged state,');
disp('with short-circuit between base and emitter.');
