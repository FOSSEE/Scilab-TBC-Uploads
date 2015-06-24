// page no 453
// example no 15.2
// BSR CONTROL WORD SUBROUTINE
clc;
printf('BSR Control Words \n \n');
printf('D7 D6 D5 D4 D3 D2 D1 D0 \n');
printf('0  0  0  0  1  1  1  1         = 0FH      To set bit PC7 \n'); 
printf('0  0  0  0  1  1  1  0         = 0EH      To reset bit PC7 \n');
printf('0  0  0  0  0  1  1  1         = 07H      To set bit PC3 \n');
printf('0  0  0  0  0  1  1  0         = 06H      To reset bit PC3 \n \n');


printf('Port Address \n \n');
printf('Control Register Address = 83H \n \n');


printf('Subroutine \n \n');
printf('MVI A,0FH \n');       // load byte in accumulator to set PC7
printf('OUT 83H \n');         // set PC7=1
printf('MVI A,07H \n');       // load byte in accumulator to set PC3.
printf('OUT 83H \n');         // set PC3=1.
printf('CALL DELAY \n');      // this is a 10 microsec delay.
printf('MVI A,06H \n');       // load byte in accumulator to reset PC3
printf('OUT 83H \n');         // reset PC3
printf('MVI A,0EH \n');       // load byte in accumulator to reset PC7.
printf('OUT 83H \n');         // reset PC7
printf('RET');
