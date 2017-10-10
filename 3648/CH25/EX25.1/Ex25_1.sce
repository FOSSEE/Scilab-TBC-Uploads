//Example 25_1
clc();
clear;
//To find out how long does a particle lives when shooted
l=2.6*10^-8        //units in sec
t=0.95         //units in c
life=l/sqrt(1-t^2)      //units in sec
printf("The particle lves by a time of=")
disp(life)
printf("Sec")
