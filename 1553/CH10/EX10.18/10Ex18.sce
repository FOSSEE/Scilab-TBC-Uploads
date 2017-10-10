//chapter 10 Ex 18

clc;
clear;
close;
com=5/100; amtupto5=10000; morethan5=4/100; remits=31100;
amtCom=com*amtupto5;
total=(remits+amtCom-(amtupto5*morethan5))/(1-morethan5);
mprintf("The total sales are Rs.%d",total);
