//page no 233
// example no 7.8
// LEFT ROTATION (RLC) OF BITS.
clc;
// initially
printf('Accumulator= AAH \n');
printf('D7 D6 D5 D4 D3 D2 D1 D0 \n');
printf(' 1  0  1  0  1  0  1  0   =AAH \n \n');
printf('CY= 0 \n \n');
printf('RLC \n \n');
printf('CY= 1 \n \n');
// carry flag is set because D7 bit was 1.
printf('D7 D6 D5 D4 D3 D2 D1 D0 \n');
printf(' 0  1  0  1  0  1  0  1   =55H \n \n'); // after the executuion of first RLC.
// RLC instruction places D7 bit in CY flag as well as in D0 bit.
printf('RLC \n \n');
printf('CY= 0 \n \n');
// carry flag is reset because D7 bit was 0.
printf('D7 D6 D5 D4 D3 D2 D1 D0 \n');
printf(' 1  0  1  0  1  0  1  0   =AAH \n \n'); // after the executuion of second RLC.
// RLC instruction places D7 bit in CY flag as well as in D0 bit.

