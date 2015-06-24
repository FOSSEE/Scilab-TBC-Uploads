// page no 327
// example no 10.6
// DISPLAY CONTENTS OF STACK
clc;
printf('LXI H,0000H \n');    // clears the HL register pair
printf('H--> 00H      L--> 00H \n \n');
printf('DAD SP \n'); // place the stack pointer content in HL
printf('H--> higher bytes of stack pointer register \n');
printf('L--> lower bytes of stack pointer register \n \n');
printf('MOV A,H \n'); // copies the contents of H in A.
printf('H--> A \n \n');
printf('OUT PORT1 \n \n');
printf('MOV A,L \n'); // copies the contents of L in A.
printf('L--> A \n \n');
printf('OUT PORT2');
