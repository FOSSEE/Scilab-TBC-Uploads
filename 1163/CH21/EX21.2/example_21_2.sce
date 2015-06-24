clear;
clc;
disp("--------------Example 21.2----------------")
identifier=1;
sequence_number=9;
// 8 & 0
word1a=dec2bin(8,8);
word1b=dec2bin(0,8);
// 0
word2a=dec2bin(0,8);
word2b=dec2bin(0,8); 
// 1
word3a=dec2bin(0,8);
word3b=dec2bin(identifier,8); 
// 9
word4a=dec2bin(0,8);
word4b=dec2bin(sequence_number,8);
 // TEST
 // T & E
word5a=dec2bin(ascii('T'),8);
word5b=dec2bin(ascii('E'),8);
 // S & T
word6a=dec2bin(ascii('S'),8);
word6b=dec2bin(ascii('T'),8);

sum_dec=bin2dec(word1a+word1b)+0+identifier+sequence_number+bin2dec(word5a+word5b)+bin2dec(word6a+word6b);
Sum=dec2bin(sum_dec,16); // sum 
sum_bytes=strsplit(Sum,8);
cmp=bitcmp(sum_dec,16);
Checksum=dec2bin(cmp,16); // checksum 
Checksum_bytes=strsplit(Checksum,8);

// display the result
printf("      8 & 0 :- %s %s\n          0 :- %s %s\n          %d :- %s %s\n          %d :- %s %s\n      T & E :- %s %s\n      S & T :- %s %s\n      Sum   :- %s %s\n   Checksum :- %s %s",word1a,word1b,word2a,word2b,identifier,word3a,word3b,sequence_number,word4a,word4b,word5a,word5b,word6a,word6b,sum_bytes(1),sum_bytes(2),Checksum_bytes(1),Checksum_bytes(2));
printf("\n\nThe message is divided into 16-bit (2-byte) words. The words are added and the sum is complemented.\nNow the sender can put this value in the checksum field.");
