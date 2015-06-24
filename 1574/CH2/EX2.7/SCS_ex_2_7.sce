clc;
// Chapter 2 Switched communication systems
//Example 2.7,page no 135
//given
N=7//no of character elements
E_C=10//elements per character (1+7+1+1)
To=100e-3//duration of one character
Te=To/E_C//duration of each element
mprintf('duration of each element is:%f msec\n',Te*1e3)
Sb=1/Te//speed in bauds
mprintf('speed is %f bauds\n',Sb)
C=2^N//total possible combinations
mprintf('total possible combinations are:%f',C)
