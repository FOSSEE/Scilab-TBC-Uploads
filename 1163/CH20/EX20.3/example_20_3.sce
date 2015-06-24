clear;
clc;
disp("--------------Example 20.3---------------")
HLEN=5;
total_length="0028"; // 0x0028 in hexadecimal
total_bytes=hex2dec(total_length); // get length in decimal or total bytes
header_bytes = HLEN*4; // number of header bytes
data_bytes=total_bytes-header_bytes; // formula
printf(" The total length is %d bytes. The total number of bytes in the header is %d bytes, which means the packet is carrying %d bytes of data.",total_bytes,header_bytes,data_bytes);  // display result


 
