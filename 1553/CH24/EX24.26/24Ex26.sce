//Chapter 24 Ex 26

clc;
clear;
close;
dia=140; s=66;
speed=(66*1000)/60;  //converting into meter/min or distance to be covered in 1 min
circumference=2*(%pi)*(dia/(2*100));
number=speed/circumference;
mprintf("The number of revolutions per min are %d",number);