clear;
clc;
disp("--------------Example 10.9---------------")
dmin=4; // minimum Hamming distance
s=dmin-1; //error detection
t=(dmin-1)/2; //error correction
// display result
printf("This code guarantees the detection of up to %d errors.\n\n",s);
printf("It can correct upto %d error.\nIn other words, if this code is used for error correction, part of its capability is wasted. Error correction codes need to have an odd\nminimum distance (3, 5, 7, ... ).",t);
