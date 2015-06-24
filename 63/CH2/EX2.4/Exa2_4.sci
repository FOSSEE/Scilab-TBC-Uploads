//Determine noise figure of the amplifier of previous example

Ro = 50;
Req = 2518;
Rt = 600;

Req1 = Req - Rt 

F = 1 + (Req1/Ro);
F1 =  10*log10(F);

disp(F, 'Noise Figure of amplifier is (in W)')
disp(F1, 'Noise Figure of amplifier is (in dB)')

