// page no 327
// example no 10.7
// SUBROUTINE TO SET THE ZERO FLAG
clc;
printf('CHECK:   PUSH H \n \n'); // sends the contents of H to the location pointed by the stack pointer.
printf('         MVI L,FFH \n');
l=hex2dec(['FF']);
l=dec2bin(l,8);
printf('         L--> '); // set all bits in L to logic 1.
disp(l);
printf('\n \n         PUSH PSW \n \n'); // save flags on top of the stack
printf('         XTHL \n \n'); // set all bits in the top stack location.
printf('         POP PSW \n \n'); // now the zero flag is set.
printf('         JZ NOEROR \n \n'); 
printf('         JMP ERROR \n \n');
printf('NOEROR:  POP H \n \n'); // retrives the data from the stack into H if zero flag is set
printf('         RET');
