clear;
clc;
disp("--------------Example 19.1---------------")
// a) 10000001 00001011 00001011 11101111
a="10000001000010110000101111101111"
ab=strsplit(a,[8 16 24 ])  //separate the bytes
a3=bin2dec(ab(1));         // convert binary numbers to decimal numbers
a2=bin2dec(ab(2));
a1=bin2dec(ab(3));
a0=bin2dec(ab(4));
printf("\na) Decimal notation :-  %d.%d.%d.%d",a3,a2,a1,a0);       //result in decimal notation
// b) 11000001 10000011 00011011 11111111
b="11000001100000110001101111111111"
bb=strsplit(b,[8 16 24 ])        //separate the bytes
b3=bin2dec(bb(1));           //convert binary numbers into decimal numbers
b2=bin2dec(bb(2));
b1=bin2dec(bb(3));
b0=bin2dec(bb(4));
printf("\n\nb) Decimal notation :-  %d.%d.%d.%d",b3,b2,b1,b0);   //result in decimal nootation
