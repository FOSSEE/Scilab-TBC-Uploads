//page no 241
//example no 7.11
// COMPARISION OF DATA.
clc;
disp('MVI A,64H'); //loads accumulator with 64H.
disp('A-->64H');
disp('LXI H,2050H'); // loads HL register pair.
disp('H=20H     L=50H');
disp('M-->9AH'); //assumed in the solution.
disp('CMP M');
//this command compares the contents of A with M by subtracting M from A.
A=hex2dec(['64']);
//register M has 9AH. Finding 2's compliment of 9AH.
M=hex2dec(['9A']);
a=dec2bin(A);
m=dec2bin(M);
t=isequalbitwise(a,m); //compares the two datas bitwise.
if(A==M)            // Jump condition
    printf('\n Result after comparision is= ');
    printf('OUT1');
else
    printf('\n Result after comparision is= ');
    disp(t); //this shows the false condition of the bitwise comparision.
