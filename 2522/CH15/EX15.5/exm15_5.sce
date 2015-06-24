// page no 486
// example no 15.5
// SUBROUTINE TO GENERATE AN INTERRUPT
clc;
printf('Control Word \n \n');
printf('D7 D6 D5 D4 D3 D2 D1 D0 \n');
printf('0  1  1  1  0  1  0  0         = 74H      Counter 1 \n'); 
printf('1  0  0  1  0  1  0  0         = 94H      Counter 2 \n \n');
printf('D7,D6          Select counter 1 \n');
printf('D5,D4          Load count \n');
printf('D3,D2,D1=010   Mode 2 \n');
printf('D0=0           Binary Count \n \n');



printf('Instructions \n \n');
printf('CNT1LO  EQU 50H \n');
printf('CNT1HI  EQU C3H \n');
printf('COUNT2  EQU 40H \n');
printf('SECOND  MVI A,01110100B \n');    // control word mode 2 & counter 1.
printf('        OUT 83H \n');            // write in 8254 control register.
printf('        MVI A,10010100B \n');    // control word mode 2 & counter 2.
printf('        OUT 83H \n');            // write in 8254 control register.
printf('        MVI A,CNT1LO \n');       // Low order byte of count 50000
printf('        OUT 81H \n');            // Load counter 1 with low order byte
printf('        MVI A,CNT1HI \n');       // high order byte of count 50000.
printf('        OUT 81H \n');            // load counter 1 with high order byte
printf('        MVI A,COUNT2 \n');       // Count for Counter 2.
printf('        OUT 82H \n');            // load counter 2.
printf('        RET');

