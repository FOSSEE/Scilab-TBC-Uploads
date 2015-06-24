clc;
//page 10
//ex-1.5

Gdb=28;   //decibell gain
G=10^(Gdb/10);  //Absolute power gain
Av=G^0.5;  //Voltage gain
disp(Av,'The voltage gain is:');
