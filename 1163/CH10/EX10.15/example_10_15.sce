clear;
clc;
disp("--------------Example 10.15---------------")
//a) g(x)= x+1
gx="x+1";
printf("\na)No x^i can be divisible by x + 1. In other words, x^i/()x + 1) always has a remainder. So the syndrome is nonzero. Any single-bit error can be caught.\n"); // display result
//b) g(x)= x3
gx="x3";
printf("\nb)If i is equal to or greater than 3, x^i is divisible by g(x). The remainder of x^i/x3 is zero, and the receiver is fooled into believing\nthat there is no error,although there might be one.Note that in this case, the corrupted bit must be in position 4 or above.\nAll single-bit errors in positions 1 to 3 are caught.\n"); // display result
//c) 1
gx="1";
printf("\nc)All values of i make x^i divisible by g(x). No single-bit error can be caught. In addition, this g(x) is useless because it means the\ncodeword is just the dataword augmented with (n - k) zeros."); // display result
