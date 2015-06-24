//page no 222
//example no 7.4
// USE OF ADDRESSING MODES.
clc;
//register B contains 32H
B=32;

//using indirect addressing modes
printf('B= %d \n',B);
disp(' 1) LXI H,8000H'); // loads HL register pair.
disp('H=80H     L=00H'); 
disp('MOV M,B'); // contents of register B are moved in memory location pointed by HL register pair.
M=B; 
printf('\n 8000H --> %d \n \n',M);

disp('LXI D,8000H'); //loads the memory location 8000H in DE register pair.
disp('D=80H     E=00H'); 
disp('MOV A,B');
A=B;
printf('A= %d \n',A);
disp('STAX D'); //stores the value of accumulator in the memory location pointer by DE register pair.
printf('\n 8000H --> %d \n \n',A);

//using direct addressing mode.
disp('2) A= F2H');
disp('STA 8000H'); //this instruction stores the value of accumulator in the memory location 8000H.
disp('8000H --> F2H');

//using indirect addressing mode.
disp('3) LXI H,8000H'); // loads HL register pair.
disp('H=80H     L=00H'); 
disp('MVI M,F2H'); //moving the data in the memory.
disp('8000H --> F2H');
