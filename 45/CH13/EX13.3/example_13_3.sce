//example 13.3
clc
clear
//bin(1,1) = input('Enter the first half string of binary number :');
//bin(1,2) = input('Enter the second half string of binary number :');
bin=['10110' '01101']; // given binry address 
dec=bin2dec(bin); // finding decimal equivlent
hex=dec2hex(dec); //findin hexdecimal equivalent
disp('The decimal address is :');
disp(dec);
disp('The hexadecimal address is :');
disp(hex);
