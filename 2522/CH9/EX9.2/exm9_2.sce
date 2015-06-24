// page no 285
// example no 9.2
// EXCHANGE OF DATA USING STACK.
clc;
printf('LXI SP,2400H \n \n'); // the stack pointer is located at 2400H.
printf('LXI H,2150H \n ');
printf('H--> 21     L-->50 \n \n');
printf('LXI B,2280H \n ');
printf('B--> 22     C-->80 \n \n');
printf('PUSH H \n'); // sends the data of HL register pair in the stack.
// stack pointer is decremented by one to 23FFH and the contents of the H register are copied to memory location 23FFH
printf('23FFH--> 21 \n'); 
// stack pointer is again decremented by one to 23FEH and the contents of the L register are copied to memory location 23FEH
printf('23FEH--> 50 \n \n');
printf('PUSH B \n'); // sends the data of BC register pair in the stack.
// stack pointer is decremented by one to 23FDH and the contents of the H register are copied to memory location 23FDH
printf('23FDH--> 22 \n'); 
// stack pointer is again decremented by one to 23FCH and the contents of the L register are copied to memory location 23FCH
printf('23FCH--> 80 \n \n');
printf('PUSH PSW \n'); // sends the data of accumulator & flag register in the stack.
// stack pointer is decremented by one to 23FBH and the contents of the H register are copied to memory location 23FBH
printf('23FBH--> contents of accumulator \n'); 
// stack pointer is again decremented by one to 23FAH and the contents of the L register are copied to memory location 23FAH
printf('23FAH--> contents of flag register \n \n');

printf('To exchange the data. \n \n')
printf(' POP PSW \n'); // sends the data in the stack back to the accumulator & flag register.
// the contents of the top of the stack are copied to A register and the stack pointer is incremented by one to 23FBH
printf('A--> contents of accumulator \n');
// the contents of the current location of stack are copied to flag register and the stack pointer is again incremented by one to 23FCH.
printf('F--> contents of flag register \n \n');
printf(' POP H \n'); // sends the data in the stack back to the HL register pair.
// the contents of the current location of the stack are copied to L register and the stack pointer is incremented by one to 23FDH
printf('L--> 80H \n');
// the contents of the current location of stack are copied to H register and the stack pointer is again incremented by one to 23FEH.
printf('H--> 22H \n \n');
printf(' POP B \n'); // sends the data in the stack back to the BC register pair.
// the contents of the current location of the stack are copied to C register and the stack pointer is incremented by one to 23FFH
printf('C--> 50H \n');
// the contents of the current location of stack are copied to B register and the stack pointer is again incremented by one to 2400H.
printf('B--> 21H \n');
