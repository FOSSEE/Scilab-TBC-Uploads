clear;
clc;
disp("--------------Example 28.4---------------")
tag="01000000"; // IPAddress tag
Length="00000100"; // 4 bytes 
IPAddress="131.21.14.8"; // value
tag_dec=bin2dec(tag); // tag's decimal value
tag_hex=dec2hex(tag_dec); // tag's hex value
Length_dec=bin2dec(Length); // length's decimal value or number of bytes
ip1=131;
ip2=21;
ip3=14;
ip4=8;
// convert the bytes to binary
byte1=dec2bin(ip1,8);
byte2=dec2bin(ip2,8);
byte3=dec2bin(ip3,8);
byte4=dec2bin(ip4,8);
// connvert bytes to hexadecimal
h1=dec2hex(ip1);
h2=dec2hex(ip2);
h3=dec2hex(ip3);
h4=dec2hex(ip4);
// display the format
printf("\n        %s          0%d         %s         %s         0%s         0%s\n",tag_hex,Length_dec,h1,h2,h3,h4);
printf("    | %s | %s |%s |  %s |  %s |  %s|\n",tag,Length,byte1,byte2,byte3,byte4);
printf("      Tag        Length      Value     Value     Value       Value\n");
printf("    (IPAddress)  (4 bytes)   (%d)      (%d)      (%d)         (%d)\n",ip1,ip2,ip3,ip4);
printf("                          |---------------%s------------------|",IPAddress);
