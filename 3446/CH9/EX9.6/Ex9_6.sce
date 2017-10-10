// Exa 9.6
// To calculate bit rate.

clc;
clear all;

Rs=19200; //symbols per second
states=64;

//solution
Bits_symbol=log2(states);
BitRate=Bits_symbol*Rs;
printf('Bit Rate of the modulator is %.1f kbps',BitRate/1000   );
