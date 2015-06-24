//page no 234
// example no 7.9
// LEFT ROTATION (RAL) OF BITS.
clc;
// initially
printf('Accumulator= AAH \n');
printf('D7 D6 D5 D4 D3 D2 D1 D0 \n');
printf(' 1  0  1  0  1  0  1  0   =AAH \n \n');
printf('CY= 0 \n \n');
printf('RAL \n \n');
printf('CY= 1 \n \n');
// carry flag is set because D7 bit was 1.
printf('D7 D6 D5 D4 D3 D2 D1 D0 \n');
printf(' 0  1  0  1  0  1  0  0   =54H \n \n'); // after the executuion of first RAL.
// RAL instruction places D7 bit in CY flag & CY flags bit is send to D0 bit.
printf('RAL \n \n');
printf('CY= 0 \n \n');
// carry flag is reset because D7 bit was 0.
printf('D7 D6 D5 D4 D3 D2 D1 D0 \n');
printf(' 1  0  1  0  1  0  0  1   =A9H \n \n'); // after the executuion of second RAL.
// RAL instruction places D7 bit in CY flag & CY flags bit is send to D0 bit.
