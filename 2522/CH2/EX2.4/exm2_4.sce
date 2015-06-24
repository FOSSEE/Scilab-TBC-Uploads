//page no 43
//example no 2.4
//CALCULATING NO OF CHIPS.
clc;
//chip 1024*1 has 1024(1k) registers & each register can store one bit with one data line. We need 8 data lines for byte size memory. Therefore 8 chips are necessary for 1k byte memory.For 1k byte memory we will need 64 chips. We can arrive at the same ans by dividing 8k byte by 1k*1 as follows:
no=(8192*8)/(1024*1);
printf('No of chips= ');
disp(no);
