clear;
clc;
disp("--------------Example 17.5---------------")
byte_number=650;
temp=dec2hex(byte_number);// convert to hexadecimal
hex='0'+temp;
h=strsplit(hex,2); // split the hexadecimal number into 2
H1=h(1);
H2=h(2);
printf("The number %d can be expressed in four hexadecimal digits as Ox%s.\nHence the value of H1 is Ox%s and the value of H2 is Ox%s.",byte_number,hex,H1,H2); // display result
