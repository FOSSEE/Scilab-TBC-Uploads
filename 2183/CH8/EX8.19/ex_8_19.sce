// Example 8.19:compare
clc;
clear;
close;
cl=1;//dB
actr=10;//dB
acl=1;//dB
fcl=4.5;//dB/km
sl=2.5;//dB
cel=2;//dB
dl=100;//m
x=cel*cl-fcl*dl*10^-3+(cel*cl+cl)*-(cel+cl)+(cel*cl+actr)+sl+cl;//
x1=(fcl*dl*10^-3)+(cel*cl+cl);//
disp("total loss for bus distribution system is "+string(x1)+"N + "+string(x)+"")
x3=(cel*2*cl)+cel+(fcl*dl*10^-3);//
disp("total loss for star distribution system is "+string(x3)+"+ 10log10(N)")
