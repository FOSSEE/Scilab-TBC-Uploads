//chapter 22 Ex 11

clc;
clear;
close;
amt=1301; t1=7; t2=9; rate=4/100;
part1=(((1+rate)^t2/(1+rate)^t1)*amt)/(1+((1+rate)^t2/(1+rate)^t1));
part2=amt-part1;
mprintf("The two parts are Rs.%.0f and Rs.%.0f",part1,part2);
