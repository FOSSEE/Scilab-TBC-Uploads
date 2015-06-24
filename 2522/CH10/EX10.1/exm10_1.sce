// page no 310
// example 10.1
// BCD TO BINARY
// BCD into its binary equivalent.
// given BCD no is 72
clc;
a=72;
    x=modulo(a,10);   // seperating the units digit
    printf('Unpacked BCD1 ')
    disp(dec2bin(x,8));
a=a/10;              // seperating the tens place digit
a=floor(a);
printf('\n \n Unpacked BCD2');
disp(dec2bin(a,8));
printf('\n \n Multiply BCD2 by 10 and add BCD1');
