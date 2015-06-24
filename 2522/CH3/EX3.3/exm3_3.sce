//page no 82
//example no 3.3
//TIME REQUIRED FOR EXECUTION.
clc;
A=32; // MVI A,32H loads the value 32 in accumulator.
printf('Accumulator= ');
disp(A);
//calculating the execution time for instruction.
f=2; // clock frequncy.
printf('clock frequency= %f MHz \n',f);
t=1/f; // T-state=clock period
printf('T-state=clock period= %f microsec \n',t);
t1=4*t; // execution time for opcode fetch.
printf('Execution time for opcode fetch= %f microsec \n',t1);
t2=3*t; // execution time for memory read.
printf('Execution time for memory read= %f microsec \n',t2);
t3=7*t; // execution time for instruction.
printf('Execution time for instruction= %f microsec \n',t3);
