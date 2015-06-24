//page no 235
// example no 7.10
// RIGHT ROTATION (RRC & RAR) OF BITS.
clc;
// initially
printf('Accumulator= 81H \n');
printf('D7 D6 D5 D4 D3 D2 D1 D0 \n');
printf(' 1  0  0  0  0  0  0  1   =81H \n \n');
printf('CY= 0 \n \n');
printf('RRC \n \n');
printf('CY= 1 \n \n');
// carry flag is set because D0 bit was 1.
printf('D7 D6 D5 D4 D3 D2 D1 D0 \n');
printf(' 1  1  0  0  0  0  0  0   =C0H \n \n'); // after the executuion of RRC.
// RRC instruction places D0 bit in CY flag as well as in D7 bit.



// initially
printf('Accumulator= 81H \n');
printf('D7 D6 D5 D4 D3 D2 D1 D0 \n');
printf(' 1  0  0  0  0  0  0  1   =81H \n \n');
printf('CY= 0 \n \n');
printf('RAR \n \n');
printf('CY= 1 \n \n');
// carry flag is set because D0 bit was 1.
printf('D7 D6 D5 D4 D3 D2 D1 D0 \n');
printf(' 0  1  0  0  0  0  0  0   =40H \n \n'); // after the executuion of RAR.
// RAR instruction places D0 bit in CY flag & CY flags bit is send to D7 bit.
