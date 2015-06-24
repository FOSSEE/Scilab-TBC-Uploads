//Exa 7.14
clc;
clear;
close;
//Given data : 
format('v',7);
//Applying KVL on +ve side
V1=200-(600*0.015)-(100)*0.03;//in volt
disp(V1,"Voltage at +ve side(in V): ");
//Applying KVL on -ve side
V2=200-(-100*0.03)-500*0.0015;//in volt
disp(V2,"Voltage at -ve side(in V): ");
//Note : answer of 2nd part is wrong in the book.