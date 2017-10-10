//chapter 1 Ex 24

clc;
clear;
close;
divisor=5; dividend=2^31;
remainder=modulo(dividend,divisor);
mprintf("The remainder is %d",remainder);
