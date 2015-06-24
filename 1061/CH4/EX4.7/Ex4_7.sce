//Ex:4.7
clc;
clear;
close;
Pi=15;// optical power in uw
Po=7;// ouput power in uw
L=0.15;// length in km
Ls=(10*log(Pi/Po)/log(10))/L;// Loss of an optical fiber in dB
printf("The Loss of an optical fiber =%d dB", Ls);