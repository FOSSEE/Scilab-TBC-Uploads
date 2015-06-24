//Example 1.41 // range
clc;
clear;
close;
//given data :
w=500; // in watt
E=1.5; // may be +ve or -ve in %
Qs=50; // in watt
Le=(E/100)*w; // may be +ve or -ve
Er=(Le/Qs)*100;
Me=(E/100)*Qs; // may be +ve or -ve
w1=Qs-Me;
w2=Qs+Me;
disp(w1,"strating range,w1(watt) = ")
disp(w2,"last range,w2(watt) = ")
