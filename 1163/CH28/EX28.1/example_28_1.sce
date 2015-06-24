clear;
clc;
disp("--------------Example 28.1---------------")
tag="00000010"; // INTEGER tag
Length="00000100"; // 4 bytes = 4*8=32 bits
value=14; // INTEGER 14
value_bin=dec2bin(value,32); // value in binary
value_hex=dec2hex(value); // value in hexadecimal
tag_dec=bin2dec(tag); // tag's decimal value
Length_dec=bin2dec(Length); // length's decimal value or number of bytes
bytes=strsplit(value_bin,[8 16 24]); // split value into 4 bytes
// convert the bytes to decimal
byte1=bin2dec(bytes(1));
byte2=bin2dec(bytes(2));
byte3=bin2dec(bytes(3));
// display the format
printf("\n       0%d          0%d          0%d         0%d        0%d        0%s\n",tag_dec,Length_dec,byte1,byte2,byte3,value_hex);
printf("    | %s | %s |%s |  %s |  %s |  %s|\n",tag,Length,bytes(1),bytes(2),bytes(3),bytes(4));
printf("      Tag        Length                   Value(%d)\n",value);
printf("     (integer)  (4 bytes)");
