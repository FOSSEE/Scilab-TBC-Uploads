//Example 11-1,Page No-392

clear
clc

t=0.0016
No_words=256
bits_word = 12

tword= t/No_words
tbit = tword/bits_word
bps =1/tbit

printf('The time duration of the word %.1f microsecond',tword*10^8)
printf('\n The time duration of the one bit is %.4f microseconds',tbit*10^8)
printf('\n The speed of transmission is %.1f kbps', bps/10^5)
