//calculating output voltages//
//example 11//
clc
//clears the command window//
clear
//clears// 
V=10;//high input voltage//
VMSB=V/2;//output caused by MSB//
VMSB2=V/4;//output caused by second MSB//
VMSB3=V/8;//output caused by third MSB//
VMSB4=V/16;//output caused by fourth MSB//
VMSB5=V/32;//output caused by fifth MSB//
VMSB6=V/64;//output caused by sixth MSB//
printf('output caused by MSB=%f volt\n',VMSB)
printf('output caused by second MSB=%f volt\n',VMSB2)
printf('output caused by third MSB=%f volt\n',VMSB3)
printf('output caused by fourth MSB=%f volt\n',VMSB4)
printf('output caused by fifth MSB=%f volt\n',VMSB5)
printf('output caused by sixth MSB=%f volt\n',VMSB6)
//displaying the results//
