clc;
// page no 446
// prob no 13_4
bit_rate=16*10^3;//in bps
chip_rate =10:1;
no_of_chip=10;
total_bit_rate=no_of_chip*bit_rate;
m=4;n=log2(m);
symbol_rate = total_bit_rate/n;
disp('baud',symbol_rate,'The no of signal changes i.e. symbol rate is ');