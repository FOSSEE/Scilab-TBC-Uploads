//calculating required data//
//example 12//
clc
//clears the command window//
clear
//clears//
V=10;//high input voltage//
//first part//
//digital input is 101001//
Vo=(10*2^0+0+0+10*2^3+0+10*2^5)/2^6;//output voltage//
printf('output voltage for digital input 101001=%f volt\n',Vo);//displaying the result//
//second part//
//digital input is 110001//
Vo1=(10*1+0+0+0+10*16+10*32)/64;//output voltage//
printf('output voltage for input 110001=%f volt',Vo1);//displaying the result//

