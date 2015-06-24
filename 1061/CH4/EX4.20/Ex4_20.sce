//Ex:4.20
clc;
clear;
close;
Pi=10*10^-3;// input power in watt
Po=8*10^-3;// output power in watt
L=0.150;// length in km
Ls=(10*log(Po/Pi)/log(10))/L;
printf("The transmission length =%f km", Ls);