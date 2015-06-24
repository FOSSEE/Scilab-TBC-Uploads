// page no 483
// example no 15.3
// INSTRUCTIONS TO GENERATE A PULSE FROM COUNTER 0
clc;
printf('Control Word \n \n');
printf('D7 D6 D5 D4 D3 D2 D1 D0 \n');
printf('0  0  0  1  0  1  0  0         = 14H \n \n'); 
printf('D7,D6=0        Select counter 0 \n');
printf('D5,D4=01       Load 8 bit count \n');
printf('D3,D2,D1=010   Mode 2 \n');
printf('D0=0           Binary Count \n \n');


printf('Count \n \n');
count=(50*10^-6)/(0.5*10^-6);
printf('Count= ');
disp(count);
disp(dec2hex(count));
printf('in hexadecimal \n \n');


printf('Instructions \n \n');
printf('PULSE: \n')
printf('MVI A,00010100B \n');    // control word mode 2 & counter 0.
printf('OUT 83H \n');            // write in 8254 control register.
printf('MVI A,64H \n');          // low order byte of the count.
printf('OUT 80H \n');            // load counter 0 with low order byte
printf('HLT');
