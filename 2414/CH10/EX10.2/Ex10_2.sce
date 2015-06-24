clc;
close();
clear();
//page no 351
//prob no. 10.2
B=4;   //kHz
SNdb=[20 30 40];   //S/N in db
SN=10 .^(SNdb./10);  //absolute S/N

C=B .*log2(1+SN);
mprintf(' S/N(db)  C(kbits/s)\n');
out=[SNdb' C'];
disp(out);
