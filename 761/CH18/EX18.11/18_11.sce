clc;
// page no 690
// prob no 18.11
// A typical microwave digital radio system uses 16-QAM.
fb=90.524;//bit rate expressesd in Mbps
n=16;// for 16-QAM system
//part a) calculation of no of bits per symbol
m=log2(n);
disp('bits',m,'The number of bits per symbol are');
// part b) calclation of baud rate
// baud rate is 1/4th of the bit rate
baud=fb/4;
disp('Mbaud',baud,'The baud rate is');