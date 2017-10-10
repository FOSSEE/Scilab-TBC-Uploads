//Chapter 33 Ex 1
clc;
clear;
close;
facevalue=6000; rate=10/100;
//calculating unexpired time, 26 days (october 31-october 5)+30 days (november)+ 17 days (december)
unexpiredTime=1/5; //converting 73 days into years
bd=facevalue*unexpiredTime*rate; //banker's discount
td=bd/(1+(unexpiredTime*rate));      //true discount
bg=bd-td;          //banker's gain
money=facevalue-bd;
mprintf("The bankers discount is Rs.%.0f\n The true discount is Rs.%.2f\n The bankers gain is Rs.%.2f\n The money received by holder of bill is Rs.%.0f",bd,td,bg,money);
