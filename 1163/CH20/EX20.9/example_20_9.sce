clear;
clc;
disp("--------------Example 20.9----------------")
offset = 100;
HLEN=5;
total_length_field=100; // 100 bytes
first_byte=offset*8; // formula
header_bytes=HLEN*4; // formula
data_bytes=total_length_field-header_bytes; // formula
last_byte=first_byte+data_bytes-1; // formula
printf("The first byte number is %d and the last byte number is %d.",first_byte,last_byte);  // display result

