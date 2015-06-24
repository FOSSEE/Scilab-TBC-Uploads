//Example 10.3: 
clc;
clear;
close;
//given data :
eta=0.6;// instrinsic stand off ratio 
Rbb=10;// interbase resistance in k-ohm
Rb1=eta*Rbb;
Rb2=Rbb-Rb1;
format('v',4)
disp(Rb1,"Resistance,Rb1(k-ohm) = ")
disp(Rb2,"Resistance,Rb1(k-ohm) = ")
