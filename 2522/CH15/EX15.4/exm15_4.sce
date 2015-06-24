// page no 484
// example no 15.4
// INSTRUCTIONS TO GENERATE SQUARE WAVE PULSE FROM COUNTER 1
clc;
printf('Control Word \n \n');
printf('D7 D6 D5 D4 D3 D2 D1 D0 \n');
printf('0  1  1  1  0  1  1  0         = 76H \n \n'); 
printf('D7,D6=01       Select counter 1 \n');
printf('D5,D4=11       Load 16 bit count \n');
printf('D3,D2,D1=011   Mode 3 \n');
printf('D0=0           Binary Count \n \n');


printf('Count \n \n');
count=(1*10^-3)/(0.5*10^-6);
printf('Count= ');
disp(count);
b=dec2hex(2000);
disp(b);
printf('in hexadecimal \n \n');


printf('Instructions \n \n');
printf('SQWAVE: \n');
printf('MVI A,01110110B \n');    // control word mode 3 & counter 1.
printf('OUT 83H \n');            // write in 8254 control register.
printf('MVI A,D0H \n');          // low order byte of the count.
printf('OUT 81H \n');            // load counter 1 with low order byte.
printf('MVI A,07H \n');          // high order byte of the count.
printf('OUT 81H \n');            // load counter 1 with high order byte
printf('HLT');
