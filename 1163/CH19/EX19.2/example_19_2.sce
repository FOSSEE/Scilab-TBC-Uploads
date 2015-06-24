clear;
clc;
disp("--------------Example 19.2---------------")
// a) 111.56.45.78
n=8;    //number of bits i.e 1 byte
a3=dec2bin(111,n);         // convert decimal numbers to binary numbers
a2=dec2bin(56,n);
a1=dec2bin(45,n);
a0=dec2bin(78,n);
disp("a) Binary notation :- "+a3+" "+a2+" "+a1+" "+a0)    //result in binary notation
// b) 221.34.7.82
b3=dec2bin(221,n);           //convert decimal numbers into binary numbers
b2=dec2bin(34,n);
b1=dec2bin(7,n);
b0=dec2bin(82,n);
disp("b) Binary notation :- "+b3+" "+b2+" "+b1+" "+b0)  //result in binary nootation
