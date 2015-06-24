clear; clc; close;

Id_low = 2;//mA
Id_high = 25;//mA
Vd_reverse_bias = -10;//V

Vd_low = 0.5;//V
Vd_high = 0.85;//V
Id_reverse_bias = -10*10^(-6);//A

Rd_low = Vd_low/Id_low;
Rd_high = Vd_high/Id_high;
Rd_reverse_bias = Vd_reverse_bias/Id_reverse_bias;

disp(Rd_low,'Low level dc resistance(in ohm):');
disp(Rd_high,'High level dc resistance(in ohm):');
disp(Rd_reverse_bias,'Reverse bias dc resistance(in ohm):');

