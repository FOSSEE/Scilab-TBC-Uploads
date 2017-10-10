//Ex 9

clc;
clear;
close;
cp_33=33;cp_22=22;         //let cp of each meter be Rs.1
sp_22=cp_33;      //given
gain=11;
gainPercent=(gain/cp_22)*100;
mprintf("The profit percent is %d percent",gainPercent);
