//chapter 19 Ex 2

clc;
clear;
close;
dDown=15; dUp=5; tDown=3+(45/60); tUp=2+(30/60);
rDown=dDown/tDown;
rUp=dUp/tUp;
sCurrent=(rDown-rUp)/2;
printf("The speed of current is %d km/hr",sCurrent);
