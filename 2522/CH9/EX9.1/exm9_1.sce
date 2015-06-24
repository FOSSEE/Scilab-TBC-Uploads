// page no 283
// example no 9.1
// PUSH POP AND DELAY INSTRUCTIONS
clc;
printf('LXI SP,2099H \n \n'); // the stack pointer is located at 2099H.
printf('LXI H,42F2H \n ');
printf('H--> 42     L-->F2 \n \n');
printf('PUSH H \n'); // sends the data of HL register pair in the stack.
// stack pointer is decremented by one to 2098H and the contents of the H register are copied to memory location 2098H
printf('2098H--> 42 \n'); 
// stack pointer is again decremented by one to 2097H and the contents of the L register are copied to memory location 2097H
printf('2097H--> F2 \n \n');
printf('Delay Counter \n \n');


n=hex2dec(['42F2']);
for i=1:n                        // DELAY LOOP
    {
    }
end

printf(' POP H \n'); // sends the data in the stack back to the HL register pair.
// the contents of the top of the stack are copied to L register and the stack pointer is incremented by one to 2098H
printf('L--> F2H \n');
// the contents of the current location of stack are copied to H register and the stack pointer is again incremented by one to 2099H.
printf('H--> 42H \n');
