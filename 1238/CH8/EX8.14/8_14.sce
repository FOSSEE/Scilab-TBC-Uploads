//calculating required data//
//example 14//
clc
//clears the command window//;
clear
//clears//
//part i//
//output high voltage=10V//
VMSB1=1/2*10;//output caused by MSB//
VMSB2=1/4*10;//output caused by second MSB// 
VMSB3=1/8*10;//output caused by third MSB//
VLSB=1/16*10;//output caused by LSB//
printf('output caused by msb=%f volt\n',VMSB1)
printf('output caused by second msb=%f volt\n',VMSB2)
printf('output caused by third msb=%f\n',VMSB3)
printf('output caused by lsb=%f volt\n',VLSB)
//displaying the results//
//part ii//
//input is 1011//
V=1*VMSB1+0+1*VMSB3+1*VLSB;//output voltage//
printf('output voltage at input 1011=%f volt\n',V);//displaying the result//
//3rd part//
Vo=VMSB1+VMSB2+VMSB3+VLSB;//full scale output voltage which occurs at 1111//
printf('full scale output voltage=%f volt',Vo);//displaying the result//
