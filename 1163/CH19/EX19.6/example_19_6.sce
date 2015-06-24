clear;
clc;
disp("--------------Example 19.6---------------")
//address :- 205.16.37.39/28
n=8;    //number of bits i.e 1 byte
a3=dec2bin(205,n);         // convert decimal numbers to binary numbers
a2=dec2bin(16,n);
a1=dec2bin(37,n);
a0=dec2bin(39,n);
disp(" Binary notation of the address is "+a3+" "+a2+" "+a1+" "+a0)
mask= 28;
num_of_zeros=32-mask; // calculate the number of bits to be set to zero
a=a3+a2+a1+a0;
p1=strsplit(a,mask); //truncate the binary address
p=p1(1);
for i= 1:num_of_zeros
    p=p+'0';       //appending zeros
end
b=strsplit(p,[8 16 24 ])  //separate the bytes
b3=bin2dec(b(1));         // convert binary numbers to decimal numbers
b2=bin2dec(b(2));
b1=bin2dec(b(3));
b0=bin2dec(b(4));
disp(" Binary notation of first address:-  "+b(1)+" "+b(2)+" "+b(3)+" "+b(4))
printf(" Decimal notation of first address:-  %d.%d.%d.%d",b3,b2,b1,b0);       //result in decimal notation
